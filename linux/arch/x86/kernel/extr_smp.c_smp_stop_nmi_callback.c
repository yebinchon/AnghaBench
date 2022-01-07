
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int NMI_HANDLED ;
 scalar_t__ atomic_read (int *) ;
 int cpu_emergency_vmxoff () ;
 scalar_t__ raw_smp_processor_id () ;
 int stop_this_cpu (int *) ;
 int stopping_cpu ;

__attribute__((used)) static int smp_stop_nmi_callback(unsigned int val, struct pt_regs *regs)
{

 if (raw_smp_processor_id() == atomic_read(&stopping_cpu))
  return NMI_HANDLED;

 cpu_emergency_vmxoff();
 stop_this_cpu(((void*)0));

 return NMI_HANDLED;
}
