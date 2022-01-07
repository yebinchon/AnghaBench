
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipi_data {int dummy; } ;


 unsigned long BITS_PER_LONG ;




 int __vmstop () ;
 unsigned long find_next_bit (unsigned long*,unsigned long,unsigned long) ;
 int generic_smp_call_function_interrupt () ;
 int ipi_timer () ;
 int scheduler_ipi () ;

__attribute__((used)) static inline void __handle_ipi(unsigned long *ops, struct ipi_data *ipi,
    int cpu)
{
 unsigned long msg = 0;
 do {
  msg = find_next_bit(ops, BITS_PER_LONG, msg+1);

  switch (msg) {

  case 128:
   ipi_timer();
   break;

  case 131:
   generic_smp_call_function_interrupt();
   break;

  case 130:



   __vmstop();
   break;

  case 129:
   scheduler_ipi();
   break;
  }
 } while (msg < BITS_PER_LONG);
}
