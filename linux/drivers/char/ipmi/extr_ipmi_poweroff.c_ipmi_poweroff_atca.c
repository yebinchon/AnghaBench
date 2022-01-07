
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_ipmi_msg {unsigned char* data; int data_len; int cmd; int netfn; } ;
struct ipmi_user {int dummy; } ;
struct ipmi_system_interface_addr {scalar_t__ lun; int channel; int addr_type; } ;
struct ipmi_addr {int dummy; } ;
typedef int data ;


 int IPMI_ATCA_SET_POWER_CMD ;
 int IPMI_BMC_CHANNEL ;
 int IPMI_NETFN_ATCA ;
 unsigned char IPMI_PICMG_ID ;
 int IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 int IPMI_UNKNOWN_ERR_COMPLETION_CODE ;
 int atca_oem_poweroff_hook (struct ipmi_user*) ;
 int ipmi_request_in_rc_mode (struct ipmi_user*,struct ipmi_addr*,struct kernel_ipmi_msg*) ;
 int pr_err (char*,int) ;
 int pr_info (char*) ;

__attribute__((used)) static void ipmi_poweroff_atca(struct ipmi_user *user)
{
 struct ipmi_system_interface_addr smi_addr;
 struct kernel_ipmi_msg send_msg;
 int rv;
 unsigned char data[4];




 smi_addr.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
 smi_addr.channel = IPMI_BMC_CHANNEL;
 smi_addr.lun = 0;

 pr_info("Powering down via ATCA power command\n");




 send_msg.netfn = IPMI_NETFN_ATCA;
 send_msg.cmd = IPMI_ATCA_SET_POWER_CMD;
 data[0] = IPMI_PICMG_ID;
 data[1] = 0;
 data[2] = 0;
 data[3] = 0;
 send_msg.data = data;
 send_msg.data_len = sizeof(data);
 rv = ipmi_request_in_rc_mode(user,
         (struct ipmi_addr *) &smi_addr,
         &send_msg);






 if (rv && rv != IPMI_UNKNOWN_ERR_COMPLETION_CODE) {
  pr_err("Unable to send ATCA powerdown message, IPMI error 0x%x\n",
         rv);
  goto out;
 }

 if (atca_oem_poweroff_hook)
  atca_oem_poweroff_hook(user);
 out:
 return;
}
