
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pcpu {int dummy; } ;
struct TYPE_4__ {int cpu_attach_mask; } ;
struct TYPE_5__ {TYPE_1__ context; } ;


 int cpu_relax () ;
 int cpumask_clear_cpu (unsigned int,int *) ;
 TYPE_2__ init_mm ;
 int * mm_cpumask (TYPE_2__*) ;
 struct pcpu* pcpu_devices ;
 int pcpu_free_lowcore (struct pcpu*) ;
 int pcpu_stopped (struct pcpu*) ;

void __cpu_die(unsigned int cpu)
{
 struct pcpu *pcpu;


 pcpu = pcpu_devices + cpu;
 while (!pcpu_stopped(pcpu))
  cpu_relax();
 pcpu_free_lowcore(pcpu);
 cpumask_clear_cpu(cpu, mm_cpumask(&init_mm));
 cpumask_clear_cpu(cpu, &init_mm.context.cpu_attach_mask);
}
