
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_ipmi_msg {unsigned char* data; int data_len; int cmd; int netfn; } ;
struct ipmi_user {int dummy; } ;
struct ipmi_system_interface_addr {scalar_t__ lun; int channel; int addr_type; } ;
struct ipmi_addr {int dummy; } ;
typedef int data ;


 int IPMI_BMC_CHANNEL ;
 int IPMI_CHASSIS_CONTROL_CMD ;
 unsigned char IPMI_CHASSIS_POWER_CYCLE ;
 unsigned char IPMI_CHASSIS_POWER_DOWN ;
 int IPMI_NETFN_CHASSIS_REQUEST ;
 int IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 int ipmi_request_in_rc_mode (struct ipmi_user*,struct ipmi_addr*,struct kernel_ipmi_msg*) ;
 scalar_t__ poweroff_powercycle ;
 int pr_err (char*,int) ;
 int pr_info (char*,char*) ;

__attribute__((used)) static void ipmi_poweroff_chassis(struct ipmi_user *user)
{
 struct ipmi_system_interface_addr smi_addr;
 struct kernel_ipmi_msg send_msg;
 int rv;
 unsigned char data[1];




 smi_addr.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
 smi_addr.channel = IPMI_BMC_CHANNEL;
 smi_addr.lun = 0;

 powercyclefailed:
 pr_info("Powering %s via IPMI chassis control command\n",
  (poweroff_powercycle ? "cycle" : "down"));




 send_msg.netfn = IPMI_NETFN_CHASSIS_REQUEST;
 send_msg.cmd = IPMI_CHASSIS_CONTROL_CMD;
 if (poweroff_powercycle)
  data[0] = IPMI_CHASSIS_POWER_CYCLE;
 else
  data[0] = IPMI_CHASSIS_POWER_DOWN;
 send_msg.data = data;
 send_msg.data_len = sizeof(data);
 rv = ipmi_request_in_rc_mode(user,
         (struct ipmi_addr *) &smi_addr,
         &send_msg);
 if (rv) {
  if (poweroff_powercycle) {

   pr_err("Unable to send chassis power cycle message, IPMI error 0x%x\n",
          rv);
   poweroff_powercycle = 0;
   goto powercyclefailed;
  }

  pr_err("Unable to send chassis power down message, IPMI error 0x%x\n",
         rv);
 }
}
