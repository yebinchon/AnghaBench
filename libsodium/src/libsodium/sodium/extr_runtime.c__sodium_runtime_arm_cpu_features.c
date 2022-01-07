
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ cpu_type_t ;
typedef scalar_t__ cpu_subtype_t ;
struct TYPE_3__ {int has_neon; int has_armcrypto; } ;
typedef TYPE_1__ CPUFeatures ;


 int ANDROID_CPU_ARM_FEATURE_AES ;
 int ANDROID_CPU_ARM_FEATURE_NEON ;
 int AT_HWCAP ;
 int AT_HWCAP2 ;
 scalar_t__ CPU_SUBTYPE_ARM64E ;
 scalar_t__ CPU_SUBTYPE_ARM64_V8 ;
 scalar_t__ CPU_TYPE_ARM64 ;
 int android_getCpuFeatures () ;
 long getauxval (int ) ;
 scalar_t__ sysctlbyname (char*,scalar_t__*,size_t*,int *,int ) ;

__attribute__((used)) static int
_sodium_runtime_arm_cpu_features(CPUFeatures * const cpu_features)
{
    cpu_features->has_neon = 0;
    cpu_features->has_armcrypto = 0;


    return -1;
    if (cpu_features->has_neon == 0) {
        return 0;
    }
    return 0;
}
