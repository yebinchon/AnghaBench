
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kernel_ipmi_msg {scalar_t__ data_len; int * data; int cmd; int netfn; } ;
struct ipmi_system_interface_addr {scalar_t__ lun; int channel; int addr_type; } ;
struct ipmi_addr {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int data_len; int* data; } ;
struct TYPE_6__ {TYPE_1__ msg; } ;
struct TYPE_5__ {int poweroff_func; int platform_type; scalar_t__ (* detect ) (int ) ;} ;


 int IPMI_BMC_CHANNEL ;
 int IPMI_GET_DEVICE_ID_CMD ;
 int IPMI_NETFN_APP_REQUEST ;
 int IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 int NUM_PO_FUNCS ;
 int capabilities ;
 TYPE_3__ halt_recv_msg ;
 int ifnum_to_use ;
 int ipmi_create_user (int,int *,int *,int *) ;
 int ipmi_destroy_user (int ) ;
 int ipmi_ifnum ;
 int ipmi_poweroff_function ;
 int ipmi_poweroff_handler ;
 int ipmi_request_wait_for_response (int ,struct ipmi_addr*,struct kernel_ipmi_msg*) ;
 int ipmi_user ;
 int ipmi_version ;
 int mfg_id ;
 int old_poweroff_func ;
 int pm_power_off ;
 TYPE_2__* poweroff_functions ;
 int pr_err (char*,...) ;
 int pr_info (char*,int ) ;
 int prod_id ;
 int ready ;
 int specific_poweroff_func ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static void ipmi_po_new_smi(int if_num, struct device *device)
{
 struct ipmi_system_interface_addr smi_addr;
 struct kernel_ipmi_msg send_msg;
 int rv;
 int i;

 if (ready)
  return;

 if ((ifnum_to_use >= 0) && (ifnum_to_use != if_num))
  return;

 rv = ipmi_create_user(if_num, &ipmi_poweroff_handler, ((void*)0),
         &ipmi_user);
 if (rv) {
  pr_err("could not create IPMI user, error %d\n", rv);
  return;
 }

 ipmi_ifnum = if_num;





 smi_addr.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
 smi_addr.channel = IPMI_BMC_CHANNEL;
 smi_addr.lun = 0;

 send_msg.netfn = IPMI_NETFN_APP_REQUEST;
 send_msg.cmd = IPMI_GET_DEVICE_ID_CMD;
 send_msg.data = ((void*)0);
 send_msg.data_len = 0;
 rv = ipmi_request_wait_for_response(ipmi_user,
         (struct ipmi_addr *) &smi_addr,
         &send_msg);
 if (rv) {
  pr_err("Unable to send IPMI get device id info, IPMI error 0x%x\n",
         rv);
  goto out_err;
 }

 if (halt_recv_msg.msg.data_len < 12) {
  pr_err("(chassis) IPMI get device id info too short, was %d bytes, needed %d bytes\n",
         halt_recv_msg.msg.data_len, 12);
  goto out_err;
 }

 mfg_id = (halt_recv_msg.msg.data[7]
    | (halt_recv_msg.msg.data[8] << 8)
    | (halt_recv_msg.msg.data[9] << 16));
 prod_id = (halt_recv_msg.msg.data[10]
     | (halt_recv_msg.msg.data[11] << 8));
 capabilities = halt_recv_msg.msg.data[6];
 ipmi_version = halt_recv_msg.msg.data[5];



 for (i = 0; i < NUM_PO_FUNCS; i++) {
  if (poweroff_functions[i].detect(ipmi_user))
   goto found;
 }

 out_err:
 pr_err("Unable to find a poweroff function that will work, giving up\n");
 ipmi_destroy_user(ipmi_user);
 return;

 found:
 pr_info("Found a %s style poweroff function\n",
  poweroff_functions[i].platform_type);
 specific_poweroff_func = poweroff_functions[i].poweroff_func;
 old_poweroff_func = pm_power_off;
 pm_power_off = ipmi_poweroff_function;
 ready = 1;
}
