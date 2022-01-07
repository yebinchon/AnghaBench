
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN (int,char*,unsigned int,unsigned int) ;
 int generic_smp_call_function_interrupt () ;
 int generic_smp_call_function_single_interrupt () ;
 int scheduler_ipi () ;
 unsigned int smp_processor_id () ;

void handle_IPI(unsigned int ipi_msg)
{
 unsigned int cpu = smp_processor_id();

 switch (ipi_msg) {
 case 128:
  break;

 case 129:
  scheduler_ipi();
  break;

 case 131:
  generic_smp_call_function_interrupt();
  break;

 case 130:
  generic_smp_call_function_single_interrupt();
  break;

 default:
  WARN(1, "CPU%u: Unknown IPI message 0x%x\n", cpu, ipi_msg);
  break;
 }
}
