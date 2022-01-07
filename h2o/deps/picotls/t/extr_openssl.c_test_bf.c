
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptls_cipher_context_t ;


 int PTLS_BLOWFISH_BLOCK_SIZE ;
 int PTLS_BLOWFISH_KEY_SIZE ;
 scalar_t__ memcmp (int*,int const*,int) ;
 int ok (int) ;
 int ptls_cipher_encrypt (int *,int*,...) ;
 int ptls_cipher_free (int *) ;
 int * ptls_cipher_new (int *,int,int const*) ;
 int ptls_openssl_bfecb ;

__attribute__((used)) static void test_bf(void)
{
}
