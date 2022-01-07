
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mmucfg; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef enum vcpu_ftr { ____Placeholder_vcpu_ftr } vcpu_ftr ;


 int MMUCFG_MAVN ;
 int MMUCFG_MAVN_V2 ;


__attribute__((used)) static inline bool has_feature(const struct kvm_vcpu *vcpu,
          enum vcpu_ftr ftr)
{
 bool has_ftr;
 switch (ftr) {
 case 128:
  has_ftr = ((vcpu->arch.mmucfg & MMUCFG_MAVN) == MMUCFG_MAVN_V2);
  break;
 default:
  return 0;
 }
 return has_ftr;
}
