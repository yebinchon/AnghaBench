
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hash; int aead; } ;
typedef TYPE_1__ ptls_cipher_suite_t ;
typedef int ptls_aead_context_t ;


 size_t SIZE_MAX ;
 int assert (int ) ;
 scalar_t__ memcmp (char const*,char*,size_t) ;
 int ok (int) ;
 size_t ptls_aead_decrypt (int *,char*,char*,size_t,int,int *,int ) ;
 scalar_t__ ptls_aead_encrypt_final (int *,char*) ;
 int ptls_aead_encrypt_init (int *,int,int *,int ) ;
 size_t ptls_aead_encrypt_update (int *,char*,char const*,size_t) ;
 int ptls_aead_free (int *) ;
 int * ptls_aead_new (int ,int ,int,char const*,int *) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void test_ciphersuite(ptls_cipher_suite_t *cs1, ptls_cipher_suite_t *cs2)
{
    const char *traffic_secret = "012345678901234567890123456789012345678901234567", *src1 = "hello world", *src2 = "good bye, all";
    ptls_aead_context_t *c;
    char enc1[256], enc2[256], dec1[256], dec2[256];
    size_t enc1len, enc2len, dec1len, dec2len;


    c = ptls_aead_new(cs1->aead, cs1->hash, 1, traffic_secret, ((void*)0));
    assert(c != ((void*)0));
    ptls_aead_encrypt_init(c, 0, ((void*)0), 0);
    enc1len = ptls_aead_encrypt_update(c, enc1, src1, strlen(src1));
    enc1len += ptls_aead_encrypt_final(c, enc1 + enc1len);
    ptls_aead_encrypt_init(c, 1, ((void*)0), 0);
    enc2len = ptls_aead_encrypt_update(c, enc2, src2, strlen(src2));
    enc2len += ptls_aead_encrypt_final(c, enc2 + enc2len);
    ptls_aead_free(c);

    c = ptls_aead_new(cs2->aead, cs2->hash, 0, traffic_secret, ((void*)0));
    assert(c != ((void*)0));


    dec1len = ptls_aead_decrypt(c, dec1, enc1, enc1len, 0, ((void*)0), 0);
    ok(dec1len != SIZE_MAX);
    dec2len = ptls_aead_decrypt(c, dec2, enc2, enc2len, 1, ((void*)0), 0);
    ok(dec2len != SIZE_MAX);
    ok(strlen(src1) == dec1len);
    ok(memcmp(src1, dec1, dec1len) == 0);
    ok(strlen(src2) == dec2len);
    ok(memcmp(src2, dec2, dec2len - 1) == 0);


    enc1[0] ^= 1;
    dec1len = ptls_aead_decrypt(c, dec1, enc1, enc1len, 0, ((void*)0), 0);
    ok(dec1len == SIZE_MAX);

    ptls_aead_free(c);
}
