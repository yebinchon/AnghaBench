
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPCMSG_COLD_RESET ;
 int intel_scu_ipc_simple_command (int ,int ) ;

__attribute__((used)) static void intel_mid_reboot(void)
{
 intel_scu_ipc_simple_command(IPCMSG_COLD_RESET, 0);
}
