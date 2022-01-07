
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wbinvd_dirty_mask; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {scalar_t__ (* has_wbinvd_exit ) () ;} ;


 int X86EMUL_CONTINUE ;
 int cpumask_clear (int ) ;
 int cpumask_set_cpu (int,int ) ;
 int get_cpu () ;
 TYPE_2__* kvm_x86_ops ;
 int need_emulate_wbinvd (struct kvm_vcpu*) ;
 int put_cpu () ;
 int smp_call_function_many (int ,int ,int *,int) ;
 scalar_t__ stub1 () ;
 int wbinvd () ;
 int wbinvd_ipi ;

__attribute__((used)) static int kvm_emulate_wbinvd_noskip(struct kvm_vcpu *vcpu)
{
 if (!need_emulate_wbinvd(vcpu))
  return X86EMUL_CONTINUE;

 if (kvm_x86_ops->has_wbinvd_exit()) {
  int cpu = get_cpu();

  cpumask_set_cpu(cpu, vcpu->arch.wbinvd_dirty_mask);
  smp_call_function_many(vcpu->arch.wbinvd_dirty_mask,
    wbinvd_ipi, ((void*)0), 1);
  put_cpu();
  cpumask_clear(vcpu->arch.wbinvd_dirty_mask);
 } else
  wbinvd();
 return X86EMUL_CONTINUE;
}
