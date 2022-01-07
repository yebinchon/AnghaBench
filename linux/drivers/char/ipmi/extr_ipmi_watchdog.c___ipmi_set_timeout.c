
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_ipmi_msg {int netfn; unsigned char* data; int data_len; int cmd; } ;
struct ipmi_system_interface_addr {scalar_t__ lun; int channel; int addr_type; } ;
struct ipmi_smi_msg {int dummy; } ;
struct ipmi_recv_msg {int dummy; } ;
struct ipmi_addr {int dummy; } ;
typedef int data ;


 int IPMI_BMC_CHANNEL ;
 int IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 int IPMI_WDOG_SET_TIMER ;
 unsigned char WDOG_DONT_STOP_ON_SET ;
 int WDOG_PRETIMEOUT_NONE ;
 int WDOG_SET_PRETIMEOUT_ACT (unsigned char,int ) ;
 int WDOG_SET_TIMEOUT (unsigned char,unsigned char,int ) ;
 int WDOG_SET_TIMEOUT_ACT (unsigned char,scalar_t__) ;
 int WDOG_SET_TIMER_USE (unsigned char,int ) ;
 scalar_t__ WDOG_TIMEOUT_NONE ;
 int WDOG_TIMER_USE_SMS_OS ;
 int ipmi_request_supply_msgs (int ,struct ipmi_addr*,int ,struct kernel_ipmi_msg*,int *,struct ipmi_smi_msg*,struct ipmi_recv_msg*,int) ;
 int ipmi_version_major ;
 int ipmi_version_minor ;
 scalar_t__ ipmi_watchdog_state ;
 int pr_warn (char*,int) ;
 int preaction_val ;
 unsigned char pretimeout ;
 int timeout ;
 int watchdog_user ;

__attribute__((used)) static int __ipmi_set_timeout(struct ipmi_smi_msg *smi_msg,
         struct ipmi_recv_msg *recv_msg,
         int *send_heartbeat_now)
{
 struct kernel_ipmi_msg msg;
 unsigned char data[6];
 int rv;
 struct ipmi_system_interface_addr addr;
 int hbnow = 0;


 data[0] = 0;
 WDOG_SET_TIMER_USE(data[0], WDOG_TIMER_USE_SMS_OS);

 if ((ipmi_version_major > 1)
     || ((ipmi_version_major == 1) && (ipmi_version_minor >= 5))) {

  data[0] |= WDOG_DONT_STOP_ON_SET;
 } else if (ipmi_watchdog_state != WDOG_TIMEOUT_NONE) {




  hbnow = 1;
 }

 data[1] = 0;
 WDOG_SET_TIMEOUT_ACT(data[1], ipmi_watchdog_state);
 if ((pretimeout > 0) && (ipmi_watchdog_state != WDOG_TIMEOUT_NONE)) {
     WDOG_SET_PRETIMEOUT_ACT(data[1], preaction_val);
     data[2] = pretimeout;
 } else {
     WDOG_SET_PRETIMEOUT_ACT(data[1], WDOG_PRETIMEOUT_NONE);
     data[2] = 0;
 }
 data[3] = 0;
 WDOG_SET_TIMEOUT(data[4], data[5], timeout);

 addr.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
 addr.channel = IPMI_BMC_CHANNEL;
 addr.lun = 0;

 msg.netfn = 0x06;
 msg.cmd = IPMI_WDOG_SET_TIMER;
 msg.data = data;
 msg.data_len = sizeof(data);
 rv = ipmi_request_supply_msgs(watchdog_user,
          (struct ipmi_addr *) &addr,
          0,
          &msg,
          ((void*)0),
          smi_msg,
          recv_msg,
          1);
 if (rv)
  pr_warn("set timeout error: %d\n", rv);
 else if (send_heartbeat_now)
  *send_heartbeat_now = hbnow;

 return rv;
}
