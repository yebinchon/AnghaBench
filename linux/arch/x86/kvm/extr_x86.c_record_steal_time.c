
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int preempted; int version; int steal; } ;
struct TYPE_8__ {int msr_val; TYPE_4__ steal; int stime; scalar_t__ last_steal; } ;
struct TYPE_9__ {TYPE_2__ st; } ;
struct kvm_vcpu {TYPE_3__ arch; int kvm; int vcpu_id; } ;
struct kvm_steal_time {int dummy; } ;
struct TYPE_7__ {scalar_t__ run_delay; } ;
struct TYPE_11__ {TYPE_1__ sched_info; } ;


 int KVM_MSR_ENABLED ;
 int KVM_VCPU_FLUSH_TLB ;
 TYPE_6__* current ;
 int kvm_read_guest_cached (int ,int *,TYPE_4__*,int) ;
 int kvm_vcpu_flush_tlb (struct kvm_vcpu*,int) ;
 int kvm_write_guest_cached (int ,int *,TYPE_4__*,int) ;
 int smp_wmb () ;
 int trace_kvm_pv_tlb_flush (int ,int) ;
 scalar_t__ unlikely (int ) ;
 int xchg (int*,int ) ;

__attribute__((used)) static void record_steal_time(struct kvm_vcpu *vcpu)
{
 if (!(vcpu->arch.st.msr_val & KVM_MSR_ENABLED))
  return;

 if (unlikely(kvm_read_guest_cached(vcpu->kvm, &vcpu->arch.st.stime,
  &vcpu->arch.st.steal, sizeof(struct kvm_steal_time))))
  return;





 trace_kvm_pv_tlb_flush(vcpu->vcpu_id,
  vcpu->arch.st.steal.preempted & KVM_VCPU_FLUSH_TLB);
 if (xchg(&vcpu->arch.st.steal.preempted, 0) & KVM_VCPU_FLUSH_TLB)
  kvm_vcpu_flush_tlb(vcpu, 0);

 if (vcpu->arch.st.steal.version & 1)
  vcpu->arch.st.steal.version += 1;

 vcpu->arch.st.steal.version += 1;

 kvm_write_guest_cached(vcpu->kvm, &vcpu->arch.st.stime,
  &vcpu->arch.st.steal, sizeof(struct kvm_steal_time));

 smp_wmb();

 vcpu->arch.st.steal.steal += current->sched_info.run_delay -
  vcpu->arch.st.last_steal;
 vcpu->arch.st.last_steal = current->sched_info.run_delay;

 kvm_write_guest_cached(vcpu->kvm, &vcpu->arch.st.stime,
  &vcpu->arch.st.steal, sizeof(struct kvm_steal_time));

 smp_wmb();

 vcpu->arch.st.steal.version += 1;

 kvm_write_guest_cached(vcpu->kvm, &vcpu->arch.st.stime,
  &vcpu->arch.st.steal, sizeof(struct kvm_steal_time));
}
