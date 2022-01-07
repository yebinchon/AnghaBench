
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPCMSG_COLD_OFF ;
 int intel_mid_pwr_power_off () ;
 int intel_scu_ipc_simple_command (int ,int) ;

__attribute__((used)) static void intel_mid_power_off(void)
{

 intel_mid_pwr_power_off();


 intel_scu_ipc_simple_command(IPCMSG_COLD_OFF, 1);
}
