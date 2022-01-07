
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kernel_ipmi_msg {int netfn; scalar_t__ data_len; int * data; int cmd; } ;
struct ipmi_system_interface_addr {scalar_t__ lun; int channel; int addr_type; } ;
struct ipmi_addr {int dummy; } ;
struct TYPE_4__ {scalar_t__* data; } ;
struct TYPE_5__ {TYPE_1__ msg; } ;


 int EINVAL ;
 int EIO ;
 int IPMI_BMC_CHANNEL ;
 int IPMI_SET_TIMEOUT_NO_HB ;
 int IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 int IPMI_WDOG_RESET_TIMER ;
 scalar_t__ IPMI_WDOG_TIMER_NOT_INIT_RESP ;
 scalar_t__ WDOG_TIMEOUT_NONE ;
 int _ipmi_set_timeout (int ) ;
 int atomic_set (int *,int) ;
 int ipmi_request_supply_msgs (int ,struct ipmi_addr*,int ,struct kernel_ipmi_msg*,int *,int *,TYPE_2__*,int) ;
 scalar_t__ ipmi_watchdog_state ;
 int msg_tofree ;
 int msg_wait ;
 int pr_err (char*) ;
 int pr_warn (char*,int) ;
 TYPE_2__ recv_msg ;
 int smi_msg ;
 int wait_for_completion (int *) ;
 int watchdog_user ;

__attribute__((used)) static int __ipmi_heartbeat(void)
{
 struct kernel_ipmi_msg msg;
 int rv;
 struct ipmi_system_interface_addr addr;
 int timeout_retries = 0;

restart:




 if (ipmi_watchdog_state == WDOG_TIMEOUT_NONE)
  return 0;

 atomic_set(&msg_tofree, 2);

 addr.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
 addr.channel = IPMI_BMC_CHANNEL;
 addr.lun = 0;

 msg.netfn = 0x06;
 msg.cmd = IPMI_WDOG_RESET_TIMER;
 msg.data = ((void*)0);
 msg.data_len = 0;
 rv = ipmi_request_supply_msgs(watchdog_user,
          (struct ipmi_addr *) &addr,
          0,
          &msg,
          ((void*)0),
          &smi_msg,
          &recv_msg,
          1);
 if (rv) {
  pr_warn("heartbeat send failure: %d\n", rv);
  return rv;
 }


 wait_for_completion(&msg_wait);

 if (recv_msg.msg.data[0] == IPMI_WDOG_TIMER_NOT_INIT_RESP) {
  timeout_retries++;
  if (timeout_retries > 3) {
   pr_err("Unable to restore the IPMI watchdog's settings, giving up\n");
   rv = -EIO;
   goto out;
  }
  rv = _ipmi_set_timeout(IPMI_SET_TIMEOUT_NO_HB);
  if (rv) {
   pr_err("Unable to send the command to set the watchdog's settings, giving up\n");
   goto out;
  }


  goto restart;
 } else if (recv_msg.msg.data[0] != 0) {





  rv = -EINVAL;
 }

out:
 return rv;
}
