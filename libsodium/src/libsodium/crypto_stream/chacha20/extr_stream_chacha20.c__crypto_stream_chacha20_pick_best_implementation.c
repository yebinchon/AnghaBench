
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_stream_chacha20_dolbeau_avx2_implementation ;
 int crypto_stream_chacha20_dolbeau_ssse3_implementation ;
 int crypto_stream_chacha20_ref_implementation ;
 int * implementation ;
 scalar_t__ sodium_runtime_has_avx2 () ;
 scalar_t__ sodium_runtime_has_ssse3 () ;

int
_crypto_stream_chacha20_pick_best_implementation(void)
{
    implementation = &crypto_stream_chacha20_ref_implementation;
    return 0;
}
