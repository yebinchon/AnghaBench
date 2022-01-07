
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int (* hardware_setup ) () ;} ;


 int __scale_tsc (int ,int ) ;
 unsigned long long kvm_default_tsc_scaling_ratio ;
 scalar_t__ kvm_has_tsc_control ;
 int kvm_init_msr_list () ;
 int kvm_max_guest_tsc_khz ;
 int kvm_max_tsc_scaling_ratio ;
 unsigned long long kvm_tsc_scaling_ratio_frac_bits ;
 TYPE_1__* kvm_x86_ops ;
 int min (int,int ) ;
 int stub1 () ;
 int tsc_khz ;

int kvm_arch_hardware_setup(void)
{
 int r;

 r = kvm_x86_ops->hardware_setup();
 if (r != 0)
  return r;

 if (kvm_has_tsc_control) {






  u64 max = min(0x7fffffffULL,
         __scale_tsc(kvm_max_tsc_scaling_ratio, tsc_khz));
  kvm_max_guest_tsc_khz = max;

  kvm_default_tsc_scaling_ratio = 1ULL << kvm_tsc_scaling_ratio_frac_bits;
 }

 kvm_init_msr_list();
 return 0;
}
