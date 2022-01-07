
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_cpuid_param {int dummy; } ;
struct TYPE_2__ {scalar_t__ x86_vendor; } ;


 scalar_t__ X86_VENDOR_CENTAUR ;
 TYPE_1__ boot_cpu_data ;

__attribute__((used)) static bool is_centaur_cpu(const struct kvm_cpuid_param *param)
{
 return boot_cpu_data.x86_vendor == X86_VENDOR_CENTAUR;
}
