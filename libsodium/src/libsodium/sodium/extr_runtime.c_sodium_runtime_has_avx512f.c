
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int has_avx512f; } ;


 TYPE_1__ _cpu_features ;

int
sodium_runtime_has_avx512f(void)
{
    return _cpu_features.has_avx512f;
}
