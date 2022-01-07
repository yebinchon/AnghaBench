
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_ipmi_msg {int netfn; scalar_t__ data_len; int * data; int cmd; } ;
struct ipmi_system_interface_addr {scalar_t__ lun; int channel; int addr_type; } ;
struct ipmi_addr {int dummy; } ;


 int IPMI_BMC_CHANNEL ;
 int IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 int IPMI_WDOG_RESET_TIMER ;
 scalar_t__ WDOG_TIMEOUT_NONE ;
 int atomic_add (int,int *) ;
 int atomic_sub (int,int *) ;
 int ipmi_request_supply_msgs (int ,struct ipmi_addr*,int ,struct kernel_ipmi_msg*,int *,int *,int *,int) ;
 scalar_t__ ipmi_watchdog_state ;
 int panic_done_count ;
 int panic_halt_heartbeat_recv_msg ;
 int panic_halt_heartbeat_smi_msg ;
 int watchdog_user ;

__attribute__((used)) static void panic_halt_ipmi_heartbeat(void)
{
 struct kernel_ipmi_msg msg;
 struct ipmi_system_interface_addr addr;
 int rv;





 if (ipmi_watchdog_state == WDOG_TIMEOUT_NONE)
  return;

 addr.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
 addr.channel = IPMI_BMC_CHANNEL;
 addr.lun = 0;

 msg.netfn = 0x06;
 msg.cmd = IPMI_WDOG_RESET_TIMER;
 msg.data = ((void*)0);
 msg.data_len = 0;
 atomic_add(1, &panic_done_count);
 rv = ipmi_request_supply_msgs(watchdog_user,
          (struct ipmi_addr *) &addr,
          0,
          &msg,
          ((void*)0),
          &panic_halt_heartbeat_smi_msg,
          &panic_halt_heartbeat_recv_msg,
          1);
 if (rv)
  atomic_sub(1, &panic_done_count);
}
