
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int OPAL_PM_WINKLE_ENABLED ;
 int SPRN_HID0 ;
 int hard_smp_processor_id () ;
 int opal_slw_set_reg (int,int ,int) ;
 int pnv_get_supported_cpuidle_states () ;

__attribute__((used)) static void update_hid_in_slw(u64 hid0)
{
 u64 idle_states = pnv_get_supported_cpuidle_states();

 if (idle_states & OPAL_PM_WINKLE_ENABLED) {

  u64 cpu_pir = hard_smp_processor_id();

  opal_slw_set_reg(cpu_pir, SPRN_HID0, hid0);
 }
}
