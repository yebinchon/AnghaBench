
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptls_iovec_t ;
struct TYPE_5__ {TYPE_2__* hash; int aead; } ;
typedef TYPE_1__ ptls_cipher_suite_t ;
typedef int ptls_aead_context_t ;
typedef int aead_secret ;
struct TYPE_6__ {int digest_size; } ;


 int PTLS_ERROR_NO_MEMORY ;
 int PTLS_MAX_DIGEST_SIZE ;
 int * new_aead (int ,TYPE_2__*,int,int *,int ,char*) ;
 int ptls_clear_memory (int *,int) ;
 int ptls_hkdf_extract (TYPE_2__*,int *,int ,int ) ;
 int ptls_iovec_init (int const*,int ) ;

__attribute__((used)) static int create_esni_aead(ptls_aead_context_t **aead_ctx, int is_enc, ptls_cipher_suite_t *cipher, ptls_iovec_t ecdh_secret,
                            const uint8_t *esni_contents_hash)
{
    uint8_t aead_secret[PTLS_MAX_DIGEST_SIZE];
    int ret;

    if ((ret = ptls_hkdf_extract(cipher->hash, aead_secret, ptls_iovec_init(((void*)0), 0), ecdh_secret)) != 0)
        goto Exit;
    if ((*aead_ctx = new_aead(cipher->aead, cipher->hash, is_enc, aead_secret,
                              ptls_iovec_init(esni_contents_hash, cipher->hash->digest_size), "tls13 esni ")) == ((void*)0)) {
        ret = PTLS_ERROR_NO_MEMORY;
        goto Exit;
    }

    ret = 0;
Exit:
    ptls_clear_memory(aead_secret, sizeof(aead_secret));
    return ret;
}
