
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int * misuse_handler ;
 int printf (char*) ;
 int sodium_init () ;
 int sodium_misuse () ;
 int sodium_runtime_has_aesni () ;
 int sodium_runtime_has_armcrypto () ;
 int sodium_runtime_has_avx () ;
 int sodium_runtime_has_avx2 () ;
 int sodium_runtime_has_avx512f () ;
 int sodium_runtime_has_neon () ;
 int sodium_runtime_has_pclmul () ;
 int sodium_runtime_has_rdrand () ;
 int sodium_runtime_has_sse2 () ;
 int sodium_runtime_has_sse3 () ;
 int sodium_runtime_has_sse41 () ;
 int sodium_runtime_has_ssse3 () ;
 int sodium_set_misuse_handler (int *) ;

int
main(void)
{
    sodium_set_misuse_handler(((void*)0));
    sodium_set_misuse_handler(misuse_handler);
    sodium_set_misuse_handler(((void*)0));

    assert(sodium_init() == 1);

    (void) sodium_runtime_has_neon();
    (void) sodium_runtime_has_armcrypto();
    (void) sodium_runtime_has_sse2();
    (void) sodium_runtime_has_sse3();
    (void) sodium_runtime_has_ssse3();
    (void) sodium_runtime_has_sse41();
    (void) sodium_runtime_has_avx();
    (void) sodium_runtime_has_avx2();
    (void) sodium_runtime_has_avx512f();
    (void) sodium_runtime_has_pclmul();
    (void) sodium_runtime_has_aesni();
    (void) sodium_runtime_has_rdrand();

    sodium_set_misuse_handler(misuse_handler);

    sodium_misuse();
    printf("Misuse handler returned\n");




    return 0;
}
