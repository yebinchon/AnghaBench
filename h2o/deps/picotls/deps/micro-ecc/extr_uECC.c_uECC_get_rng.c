
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uECC_RNG_Function ;


 int g_rng_function ;

uECC_RNG_Function uECC_get_rng(void) {
    return g_rng_function;
}
