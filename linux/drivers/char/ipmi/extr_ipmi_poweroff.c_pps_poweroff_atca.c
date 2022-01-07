
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_ipmi_msg {int data_len; int data; int cmd; int netfn; } ;
struct ipmi_user {int dummy; } ;
struct ipmi_system_interface_addr {scalar_t__ lun; int channel; int addr_type; } ;
struct ipmi_addr {int dummy; } ;


 int IPMI_ATCA_PPS_GRACEFUL_RESTART ;
 int IPMI_ATCA_PPS_IANA ;
 int IPMI_BMC_CHANNEL ;
 int IPMI_NETFN_OEM ;
 int IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 int IPMI_UNKNOWN_ERR_COMPLETION_CODE ;
 int ipmi_request_in_rc_mode (struct ipmi_user*,struct ipmi_addr*,struct kernel_ipmi_msg*) ;
 int pr_err (char*,int) ;
 int pr_info (char*) ;

__attribute__((used)) static void pps_poweroff_atca(struct ipmi_user *user)
{
 struct ipmi_system_interface_addr smi_addr;
 struct kernel_ipmi_msg send_msg;
 int rv;



 smi_addr.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
 smi_addr.channel = IPMI_BMC_CHANNEL;
 smi_addr.lun = 0;

 pr_info("PPS powerdown hook used\n");

 send_msg.netfn = IPMI_NETFN_OEM;
 send_msg.cmd = IPMI_ATCA_PPS_GRACEFUL_RESTART;
 send_msg.data = IPMI_ATCA_PPS_IANA;
 send_msg.data_len = 3;
 rv = ipmi_request_in_rc_mode(user,
         (struct ipmi_addr *) &smi_addr,
         &send_msg);
 if (rv && rv != IPMI_UNKNOWN_ERR_COMPLETION_CODE)
  pr_err("Unable to send ATCA, IPMI error 0x%x\n", rv);

 return;
}
