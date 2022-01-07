
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stimer_pending_bitmap; } ;
struct TYPE_4__ {TYPE_1__ hyperv; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int HV_SYNIC_STIMER_COUNT ;
 int bitmap_empty (int ,int ) ;

__attribute__((used)) static inline bool kvm_hv_has_stimer_pending(struct kvm_vcpu *vcpu)
{
 return !bitmap_empty(vcpu->arch.hyperv.stimer_pending_bitmap,
        HV_SYNIC_STIMER_COUNT);
}
