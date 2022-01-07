
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_onetimeauth_poly1305_donna_implementation ;
 int crypto_onetimeauth_poly1305_sse2_implementation ;
 int * implementation ;
 scalar_t__ sodium_runtime_has_sse2 () ;

int
_crypto_onetimeauth_poly1305_pick_best_implementation(void)
{
    implementation = &crypto_onetimeauth_poly1305_donna_implementation;





    return 0;
}
