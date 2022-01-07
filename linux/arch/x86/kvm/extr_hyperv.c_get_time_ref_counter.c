
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {scalar_t__ tsc_offset; int tsc_scale; int tsc_sequence; } ;
struct kvm_hv {TYPE_2__ tsc_ref; } ;
struct TYPE_3__ {struct kvm_hv hyperv; } ;
struct kvm {TYPE_1__ arch; } ;


 scalar_t__ div_u64 (int ,int) ;
 int get_kvmclock_ns (struct kvm*) ;
 struct kvm_vcpu* kvm_get_vcpu (struct kvm*,int ) ;
 scalar_t__ kvm_read_l1_tsc (struct kvm_vcpu*,int ) ;
 scalar_t__ mul_u64_u64_shr (scalar_t__,int ,int) ;
 int rdtsc () ;

__attribute__((used)) static u64 get_time_ref_counter(struct kvm *kvm)
{
 struct kvm_hv *hv = &kvm->arch.hyperv;
 struct kvm_vcpu *vcpu;
 u64 tsc;





 if (!hv->tsc_ref.tsc_sequence)
  return div_u64(get_kvmclock_ns(kvm), 100);

 vcpu = kvm_get_vcpu(kvm, 0);
 tsc = kvm_read_l1_tsc(vcpu, rdtsc());
 return mul_u64_u64_shr(tsc, hv->tsc_ref.tsc_scale, 64)
  + hv->tsc_ref.tsc_offset;
}
