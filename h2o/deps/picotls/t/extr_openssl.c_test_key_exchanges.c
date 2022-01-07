
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ptls_minicrypto_secp256r1 ;
 int ptls_minicrypto_x25519 ;
 int ptls_openssl_secp256r1 ;
 int ptls_openssl_secp384r1 ;
 int ptls_openssl_secp521r1 ;
 int ptls_openssl_x25519 ;
 int test_key_exchange (int *,int *) ;

__attribute__((used)) static void test_key_exchanges(void)
{
    test_key_exchange(&ptls_openssl_secp256r1, &ptls_openssl_secp256r1);
    test_key_exchange(&ptls_openssl_secp256r1, &ptls_minicrypto_secp256r1);
    test_key_exchange(&ptls_minicrypto_secp256r1, &ptls_openssl_secp256r1);
}
