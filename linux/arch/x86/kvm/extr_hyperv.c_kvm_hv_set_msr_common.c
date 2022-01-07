
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {TYPE_3__* kvm; } ;
struct TYPE_4__ {int hv_lock; } ;
struct TYPE_5__ {TYPE_1__ hyperv; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;


 scalar_t__ kvm_hv_msr_partition_wide (int ) ;
 int kvm_hv_set_msr (struct kvm_vcpu*,int ,int ,int) ;
 int kvm_hv_set_msr_pw (struct kvm_vcpu*,int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int kvm_hv_set_msr_common(struct kvm_vcpu *vcpu, u32 msr, u64 data, bool host)
{
 if (kvm_hv_msr_partition_wide(msr)) {
  int r;

  mutex_lock(&vcpu->kvm->arch.hyperv.hv_lock);
  r = kvm_hv_set_msr_pw(vcpu, msr, data, host);
  mutex_unlock(&vcpu->kvm->arch.hyperv.hv_lock);
  return r;
 } else
  return kvm_hv_set_msr(vcpu, msr, data, host);
}
