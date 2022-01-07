
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
 size_t ptls_aead_decrypt (int *,char*,char*,size_t,int,char const*,size_t) ;
 scalar_t__ ptls_aead_encrypt_final (int *,char*) ;
 int ptls_aead_encrypt_init (int *,int,char const*,size_t) ;
 size_t ptls_aead_encrypt_update (int *,char*,char const*,size_t) ;
 int ptls_aead_free (int *) ;
 int * ptls_aead_new (int ,int ,int,char const*,int *) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void test_aad_ciphersuite(ptls_cipher_suite_t *cs1, ptls_cipher_suite_t *cs2)
{
    const char *traffic_secret = "012345678901234567890123456789012345678901234567", *src = "hello world", *aad = "my true aad";
    ptls_aead_context_t *c;
    char enc[256], dec[256];
    size_t enclen, declen;


    c = ptls_aead_new(cs1->aead, cs1->hash, 1, traffic_secret, ((void*)0));
    assert(c != ((void*)0));
    ptls_aead_encrypt_init(c, 123, aad, strlen(aad));
    enclen = ptls_aead_encrypt_update(c, enc, src, strlen(src));
    enclen += ptls_aead_encrypt_final(c, enc + enclen);
    ptls_aead_free(c);


    c = ptls_aead_new(cs2->aead, cs2->hash, 0, traffic_secret, ((void*)0));
    assert(c != ((void*)0));
    declen = ptls_aead_decrypt(c, dec, enc, enclen, 123, aad, strlen(aad));
    ok(declen == strlen(src));
    ok(memcmp(src, dec, declen) == 0);
    declen = ptls_aead_decrypt(c, dec, enc, enclen, 123, "my fake aad", strlen(aad));
    ok(declen == SIZE_MAX);
    ptls_aead_free(c);
}
