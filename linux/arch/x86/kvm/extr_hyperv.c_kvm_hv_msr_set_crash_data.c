
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct kvm_vcpu {TYPE_2__* kvm; } ;
struct kvm_hv {int * hv_crash_param; } ;
struct TYPE_3__ {struct kvm_hv hyperv; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 size_t ARRAY_SIZE (int *) ;
 int EINVAL ;
 scalar_t__ WARN_ON_ONCE (int) ;

__attribute__((used)) static int kvm_hv_msr_set_crash_data(struct kvm_vcpu *vcpu,
         u32 index, u64 data)
{
 struct kvm_hv *hv = &vcpu->kvm->arch.hyperv;

 if (WARN_ON_ONCE(index >= ARRAY_SIZE(hv->hv_crash_param)))
  return -EINVAL;

 hv->hv_crash_param[index] = data;
 return 0;
}
