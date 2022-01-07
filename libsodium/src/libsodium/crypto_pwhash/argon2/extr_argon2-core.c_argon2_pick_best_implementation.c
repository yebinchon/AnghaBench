
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int argon2_fill_segment_avx2 ;
 int argon2_fill_segment_avx512f ;
 int argon2_fill_segment_ref ;
 int argon2_fill_segment_ssse3 ;
 int fill_segment ;
 scalar_t__ sodium_runtime_has_avx2 () ;
 scalar_t__ sodium_runtime_has_avx512f () ;
 scalar_t__ sodium_runtime_has_ssse3 () ;

__attribute__((used)) static int
argon2_pick_best_implementation(void)
{
    fill_segment = argon2_fill_segment_ref;

    return 0;

}
