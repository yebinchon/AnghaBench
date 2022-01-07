
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* kexec_cpu_down ) (int ,int ) ;} ;


 int hard_irq_disable () ;
 int local_irq_disable () ;
 TYPE_1__ ppc_md ;
 int smp_release_cpus () ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void kexec_prepare_cpus(void)
{
 smp_release_cpus();
 if (ppc_md.kexec_cpu_down)
  ppc_md.kexec_cpu_down(0, 0);
 local_irq_disable();
 hard_irq_disable();
}
