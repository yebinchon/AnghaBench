
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct kvm_vcpu {int dummy; } ;
typedef scalar_t__ s64 ;
struct TYPE_2__ {scalar_t__ (* read_l1_tsc_offset ) (struct kvm_vcpu*) ;} ;


 int kvm_vcpu_write_tsc_offset (struct kvm_vcpu*,scalar_t__) ;
 TYPE_1__* kvm_x86_ops ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static inline void adjust_tsc_offset_guest(struct kvm_vcpu *vcpu,
        s64 adjustment)
{
 u64 tsc_offset = kvm_x86_ops->read_l1_tsc_offset(vcpu);
 kvm_vcpu_write_tsc_offset(vcpu, tsc_offset + adjustment);
}
