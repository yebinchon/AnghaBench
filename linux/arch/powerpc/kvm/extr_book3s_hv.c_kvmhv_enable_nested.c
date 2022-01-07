
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nested_enable; } ;
struct kvm {TYPE_1__ arch; } ;


 int CPU_FTR_ARCH_300 ;
 int ENODEV ;
 int EPERM ;
 int cpu_has_feature (int ) ;
 int nested ;
 scalar_t__ no_mixing_hpt_and_radix ;

__attribute__((used)) static int kvmhv_enable_nested(struct kvm *kvm)
{
 if (!nested)
  return -EPERM;
 if (!cpu_has_feature(CPU_FTR_ARCH_300) || no_mixing_hpt_and_radix)
  return -ENODEV;


 if (kvm)
  kvm->arch.nested_enable = 1;
 return 0;
}
