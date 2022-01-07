
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* read_l1_tsc_offset ) (struct kvm_vcpu*) ;} ;


 scalar_t__ kvm_scale_tsc (struct kvm_vcpu*,scalar_t__) ;
 TYPE_1__* kvm_x86_ops ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;

u64 kvm_read_l1_tsc(struct kvm_vcpu *vcpu, u64 host_tsc)
{
 u64 tsc_offset = kvm_x86_ops->read_l1_tsc_offset(vcpu);

 return tsc_offset + kvm_scale_tsc(vcpu, host_tsc);
}
