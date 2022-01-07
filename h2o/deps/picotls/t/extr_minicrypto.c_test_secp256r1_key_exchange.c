
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ptls_minicrypto_secp256r1 ;
 int test_key_exchange (int *,int *) ;

__attribute__((used)) static void test_secp256r1_key_exchange(void)
{
    test_key_exchange(&ptls_minicrypto_secp256r1, &ptls_minicrypto_secp256r1);
}
