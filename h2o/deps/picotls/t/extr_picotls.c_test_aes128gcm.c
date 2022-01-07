
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptls_cipher_suite_t ;


 int PTLS_CIPHER_SUITE_AES_128_GCM_SHA256 ;
 int ctx ;
 int * find_cipher (int ,int ) ;
 int test_aad_ciphersuite (int *,int *) ;
 int test_ciphersuite (int *,int *) ;

__attribute__((used)) static void test_aes128gcm(void)
{
    ptls_cipher_suite_t *cs = find_cipher(ctx, PTLS_CIPHER_SUITE_AES_128_GCM_SHA256),
                        *cs_peer = find_cipher(ctx, PTLS_CIPHER_SUITE_AES_128_GCM_SHA256);

    test_ciphersuite(cs, cs_peer);
    test_aad_ciphersuite(cs, cs_peer);
}
