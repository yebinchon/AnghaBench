
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_has_dsp ;
 int current ;
 scalar_t__ is_fpu_owner () ;
 int restore_dsp (int ) ;
 int restore_fp (int ) ;
 int saved_status ;
 int write_c0_status (int ) ;

void restore_processor_state(void)
{
 write_c0_status(saved_status);

 if (is_fpu_owner())
  restore_fp(current);
 if (cpu_has_dsp)
  restore_dsp(current);
}
