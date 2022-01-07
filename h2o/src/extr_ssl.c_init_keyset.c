
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int * dec; int * enc; } ;
struct st_quic_keyset_t {TYPE_1__ address_token; int * cid; int name; } ;
struct TYPE_11__ {int len; int base; } ;
typedef TYPE_2__ ptls_iovec_t ;
typedef int master_digestbuf ;
typedef int keybuf ;
struct TYPE_12__ {int key_size; } ;


 int PTLS_MAX_DIGEST_SIZE ;
 int PTLS_MAX_SECRET_SIZE ;
 int PTLS_SHA256_DIGEST_SIZE ;
 int assert (int) ;
 void* ptls_aead_new (TYPE_4__*,int *,int,int *,char*) ;
 int ptls_calc_hash (int *,int *,int ,int ) ;
 int ptls_clear_memory (int *,int) ;
 int ptls_hkdf_expand_label (int *,int *,int ,TYPE_2__,char*,TYPE_2__,char*) ;
 TYPE_2__ ptls_iovec_init (int *,int ) ;
 int ptls_openssl_aes128ecb ;
 TYPE_4__ ptls_openssl_aes128gcm ;
 int ptls_openssl_bfecb ;
 int ptls_openssl_sha256 ;
 int * quicly_new_default_cid_encryptor (int *,int *,int *,TYPE_2__) ;

__attribute__((used)) static void init_keyset(struct st_quic_keyset_t *keyset, uint8_t name, ptls_iovec_t master_secret)
{
    uint8_t master_digestbuf[PTLS_MAX_DIGEST_SIZE], keybuf[PTLS_MAX_SECRET_SIZE];
    int ret;

    if (master_secret.len > PTLS_SHA256_DIGEST_SIZE) {
        ptls_calc_hash(&ptls_openssl_sha256, master_digestbuf, master_secret.base, master_secret.len);
        master_secret = ptls_iovec_init(master_digestbuf, PTLS_SHA256_DIGEST_SIZE);
    }

    keyset->name = name;
    keyset->cid =
        quicly_new_default_cid_encryptor(&ptls_openssl_bfecb, &ptls_openssl_aes128ecb, &ptls_openssl_sha256, master_secret);
    assert(keyset->cid != ((void*)0));
    ret = ptls_hkdf_expand_label(&ptls_openssl_sha256, keybuf, ptls_openssl_aes128gcm.key_size, master_secret, "address-token",
                                 ptls_iovec_init(((void*)0), 0), "");
    assert(ret == 0);
    keyset->address_token.enc = ptls_aead_new(&ptls_openssl_aes128gcm, &ptls_openssl_sha256, 1, keybuf, "");
    assert(keyset->address_token.enc != ((void*)0));
    keyset->address_token.dec = ptls_aead_new(&ptls_openssl_aes128gcm, &ptls_openssl_sha256, 0, keybuf, "");
    assert(keyset->address_token.dec != ((void*)0));

    ptls_clear_memory(master_digestbuf, sizeof(master_digestbuf));
    ptls_clear_memory(keybuf, sizeof(keybuf));
}
