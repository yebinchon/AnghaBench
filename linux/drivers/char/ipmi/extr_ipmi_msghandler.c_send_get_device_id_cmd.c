
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernel_ipmi_msg {scalar_t__ data_len; int * data; int cmd; int netfn; } ;
struct ipmi_system_interface_addr {scalar_t__ lun; int channel; int addr_type; } ;
struct ipmi_smi {TYPE_1__* addrinfo; } ;
struct ipmi_addr {int dummy; } ;
struct TYPE_2__ {int lun; int address; } ;


 int IPMI_BMC_CHANNEL ;
 int IPMI_GET_DEVICE_ID_CMD ;
 int IPMI_NETFN_APP_REQUEST ;
 int IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 int i_ipmi_request (int *,struct ipmi_smi*,struct ipmi_addr*,int ,struct kernel_ipmi_msg*,struct ipmi_smi*,int *,int *,int ,int ,int ,int,int ) ;

__attribute__((used)) static int
send_get_device_id_cmd(struct ipmi_smi *intf)
{
 struct ipmi_system_interface_addr si;
 struct kernel_ipmi_msg msg;

 si.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
 si.channel = IPMI_BMC_CHANNEL;
 si.lun = 0;

 msg.netfn = IPMI_NETFN_APP_REQUEST;
 msg.cmd = IPMI_GET_DEVICE_ID_CMD;
 msg.data = ((void*)0);
 msg.data_len = 0;

 return i_ipmi_request(((void*)0),
         intf,
         (struct ipmi_addr *) &si,
         0,
         &msg,
         intf,
         ((void*)0),
         ((void*)0),
         0,
         intf->addrinfo[0].address,
         intf->addrinfo[0].lun,
         -1, 0);
}
