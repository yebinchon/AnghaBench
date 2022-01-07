
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ kvm_scale_tsc (struct kvm_vcpu*,int ) ;
 int rdtsc () ;

__attribute__((used)) static u64 kvm_compute_tsc_offset(struct kvm_vcpu *vcpu, u64 target_tsc)
{
 u64 tsc;

 tsc = kvm_scale_tsc(vcpu, rdtsc());

 return target_tsc - tsc;
}
