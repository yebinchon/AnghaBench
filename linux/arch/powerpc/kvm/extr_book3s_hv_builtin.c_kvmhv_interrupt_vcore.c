
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcore {int pcpu; } ;


 int kvmhv_rm_send_ipi (int) ;
 int smp_mb () ;

__attribute__((used)) static void kvmhv_interrupt_vcore(struct kvmppc_vcore *vc, int active)
{
 int cpu = vc->pcpu;


 smp_mb();
 for (; active; active >>= 1, ++cpu)
  if (active & 1)
   kvmhv_rm_send_ipi(cpu);
}
