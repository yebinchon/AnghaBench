
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {int ia32_tsc_adjust_msr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef scalar_t__ s64 ;
struct TYPE_4__ {scalar_t__ (* read_l1_tsc_offset ) (struct kvm_vcpu*) ;} ;


 TYPE_2__* kvm_x86_ops ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static void update_ia32_tsc_adjust_msr(struct kvm_vcpu *vcpu, s64 offset)
{
 u64 curr_offset = kvm_x86_ops->read_l1_tsc_offset(vcpu);
 vcpu->arch.ia32_tsc_adjust_msr += offset - curr_offset;
}
