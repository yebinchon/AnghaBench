
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct kvm_vcpu {TYPE_2__* kvm; } ;
struct TYPE_3__ {scalar_t__ kvmclock_offset; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;





 scalar_t__ ktime_get_boottime_ns () ;
 scalar_t__ rdtsc () ;

__attribute__((used)) static int kvm_pmu_rdpmc_vmware(struct kvm_vcpu *vcpu, unsigned idx, u64 *data)
{
 u64 ctr_val;

 switch (idx) {
 case 129:
  ctr_val = rdtsc();
  break;
 case 128:
  ctr_val = ktime_get_boottime_ns();
  break;
 case 130:
  ctr_val = ktime_get_boottime_ns() +
   vcpu->kvm->arch.kvmclock_offset;
  break;
 default:
  return 1;
 }

 *data = ctr_val;
 return 0;
}
