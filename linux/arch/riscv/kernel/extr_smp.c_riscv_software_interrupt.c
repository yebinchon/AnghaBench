
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long bits; unsigned long* stats; } ;


 int BUG_ON (int) ;
 int IPI_CALL_FUNC ;
 int IPI_CPU_STOP ;
 unsigned long IPI_MAX ;
 int IPI_RESCHEDULE ;
 int clear_ipi () ;
 int generic_smp_call_function_interrupt () ;
 TYPE_1__* ipi_data ;
 int ipi_stop () ;
 int mb () ;
 int scheduler_ipi () ;
 size_t smp_processor_id () ;
 unsigned long xchg (unsigned long*,int ) ;

void riscv_software_interrupt(void)
{
 unsigned long *pending_ipis = &ipi_data[smp_processor_id()].bits;
 unsigned long *stats = ipi_data[smp_processor_id()].stats;

 clear_ipi();

 while (1) {
  unsigned long ops;


  mb();

  ops = xchg(pending_ipis, 0);
  if (ops == 0)
   return;

  if (ops & (1 << IPI_RESCHEDULE)) {
   stats[IPI_RESCHEDULE]++;
   scheduler_ipi();
  }

  if (ops & (1 << IPI_CALL_FUNC)) {
   stats[IPI_CALL_FUNC]++;
   generic_smp_call_function_interrupt();
  }

  if (ops & (1 << IPI_CPU_STOP)) {
   stats[IPI_CPU_STOP]++;
   ipi_stop();
  }

  BUG_ON((ops >> IPI_MAX) != 0);


  mb();
 }
}
