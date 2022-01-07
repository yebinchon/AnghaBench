
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ tsc_scaling_ratio; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ __scale_tsc (scalar_t__,scalar_t__) ;
 scalar_t__ kvm_default_tsc_scaling_ratio ;

u64 kvm_scale_tsc(struct kvm_vcpu *vcpu, u64 tsc)
{
 u64 _tsc = tsc;
 u64 ratio = vcpu->arch.tsc_scaling_ratio;

 if (ratio != kvm_default_tsc_scaling_ratio)
  _tsc = __scale_tsc(ratio, tsc);

 return _tsc;
}
