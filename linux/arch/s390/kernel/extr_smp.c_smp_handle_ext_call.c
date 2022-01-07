
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ec_mask; } ;


 int ec_call_function_single ;
 int ec_schedule ;
 int ec_stop_cpu ;
 int generic_smp_call_function_single_interrupt () ;
 TYPE_1__* pcpu_devices ;
 int scheduler_ipi () ;
 size_t smp_processor_id () ;
 int smp_stop_cpu () ;
 scalar_t__ test_bit (int ,unsigned long*) ;
 unsigned long xchg (int *,int ) ;

__attribute__((used)) static void smp_handle_ext_call(void)
{
 unsigned long bits;


 bits = xchg(&pcpu_devices[smp_processor_id()].ec_mask, 0);
 if (test_bit(ec_stop_cpu, &bits))
  smp_stop_cpu();
 if (test_bit(ec_schedule, &bits))
  scheduler_ipi();
 if (test_bit(ec_call_function_single, &bits))
  generic_smp_call_function_single_interrupt();
}
