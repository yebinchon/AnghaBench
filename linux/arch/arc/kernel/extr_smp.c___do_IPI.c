
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generic_smp_call_function_interrupt () ;
 int ipi_cpu_stop () ;
 int scheduler_ipi () ;

__attribute__((used)) static inline int __do_IPI(unsigned long msg)
{
 int rc = 0;

 switch (msg) {
 case 128:
  scheduler_ipi();
  break;

 case 130:
  generic_smp_call_function_interrupt();
  break;

 case 129:
  ipi_cpu_stop();
  break;

 default:
  rc = 1;
 }

 return rc;
}
