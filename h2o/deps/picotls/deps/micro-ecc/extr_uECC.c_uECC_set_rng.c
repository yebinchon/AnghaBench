
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uECC_RNG_Function ;


 int g_rng_function ;

void uECC_set_rng(uECC_RNG_Function rng_function) {
    g_rng_function = rng_function;
}
