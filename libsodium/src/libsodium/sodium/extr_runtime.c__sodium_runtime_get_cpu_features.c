
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int initialized; } ;


 TYPE_1__ _cpu_features ;
 int _sodium_runtime_arm_cpu_features (TYPE_1__*) ;
 int _sodium_runtime_intel_cpu_features (TYPE_1__*) ;

int
_sodium_runtime_get_cpu_features(void)
{
    int ret = -1;

    ret &= _sodium_runtime_arm_cpu_features(&_cpu_features);
    ret &= _sodium_runtime_intel_cpu_features(&_cpu_features);
    _cpu_features.initialized = 1;

    return ret;
}
