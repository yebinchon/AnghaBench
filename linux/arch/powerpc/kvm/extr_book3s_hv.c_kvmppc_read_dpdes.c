
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {int vcpu_id; int cpu; TYPE_2__* kvm; } ;
struct TYPE_3__ {int emul_smt_mode; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int READ_ONCE (int ) ;
 int do_nothing ;
 scalar_t__ kvmppc_doorbell_pending (struct kvm_vcpu*) ;
 struct kvm_vcpu* kvmppc_find_vcpu (TYPE_2__*,int) ;
 int smp_call_function_single (int,int ,int *,int) ;

__attribute__((used)) static unsigned long kvmppc_read_dpdes(struct kvm_vcpu *vcpu)
{
 int thr, cpu, pcpu, nthreads;
 struct kvm_vcpu *v;
 unsigned long dpdes;

 nthreads = vcpu->kvm->arch.emul_smt_mode;
 dpdes = 0;
 cpu = vcpu->vcpu_id & ~(nthreads - 1);
 for (thr = 0; thr < nthreads; ++thr, ++cpu) {
  v = kvmppc_find_vcpu(vcpu->kvm, cpu);
  if (!v)
   continue;





  pcpu = READ_ONCE(v->cpu);
  if (pcpu >= 0)
   smp_call_function_single(pcpu, do_nothing, ((void*)0), 1);
  if (kvmppc_doorbell_pending(v))
   dpdes |= 1 << thr;
 }
 return dpdes;
}
