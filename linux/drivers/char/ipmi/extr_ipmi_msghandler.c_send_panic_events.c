
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernel_ipmi_msg {int netfn; int cmd; unsigned char* data; int data_len; } ;
struct ipmi_system_interface_addr {scalar_t__ lun; void* channel; void* addr_type; } ;
struct ipmi_smi {int event_receiver; TYPE_1__* addrinfo; scalar_t__ local_sel_device; int event_receiver_lun; int * null_user_handler; scalar_t__ local_event_generator; } ;
struct ipmi_ipmb_addr {int slave_addr; int lun; scalar_t__ channel; int addr_type; } ;
struct ipmi_addr {int dummy; } ;
struct TYPE_2__ {int address; } ;


 int IPMI_ADD_SEL_ENTRY_CMD ;
 void* IPMI_BMC_CHANNEL ;
 int IPMI_GET_DEVICE_ID_CMD ;
 int IPMI_GET_EVENT_RECEIVER_CMD ;
 int IPMI_IPMB_ADDR_TYPE ;
 int IPMI_NETFN_APP_REQUEST ;
 int IPMI_NETFN_SENSOR_EVENT_REQUEST ;
 int IPMI_NETFN_STORAGE_REQUEST ;
 scalar_t__ IPMI_SEND_PANIC_EVENT_NONE ;
 scalar_t__ IPMI_SEND_PANIC_EVENT_STRING ;
 void* IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 int * device_id_fetcher ;
 int * event_receiver_fetcher ;
 int ipmi_panic_request_and_wait (struct ipmi_smi*,struct ipmi_addr*,struct kernel_ipmi_msg*) ;
 scalar_t__ ipmi_send_panic_event ;
 int smp_rmb () ;
 int strlen (char*) ;
 int strncpy (unsigned char*,char*,int) ;

__attribute__((used)) static void send_panic_events(struct ipmi_smi *intf, char *str)
{
 struct kernel_ipmi_msg msg;
 unsigned char data[16];
 struct ipmi_system_interface_addr *si;
 struct ipmi_addr addr;
 char *p = str;
 struct ipmi_ipmb_addr *ipmb;
 int j;

 if (ipmi_send_panic_event == IPMI_SEND_PANIC_EVENT_NONE)
  return;

 si = (struct ipmi_system_interface_addr *) &addr;
 si->addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
 si->channel = IPMI_BMC_CHANNEL;
 si->lun = 0;


 msg.netfn = 0x04;
 msg.cmd = 2;
 msg.data = data;
 msg.data_len = 8;
 data[0] = 0x41;
 data[1] = 0x03;
 data[2] = 0x20;
 data[4] = 0x6f;
 data[5] = 0xa1;





 if (str) {
  data[3] = str[0];
  data[6] = str[1];
  data[7] = str[2];
 }


 ipmi_panic_request_and_wait(intf, &addr, &msg);





 if (ipmi_send_panic_event != IPMI_SEND_PANIC_EVENT_STRING || !str)
  return;







 smp_rmb();
 intf->local_sel_device = 0;
 intf->local_event_generator = 0;
 intf->event_receiver = 0;


 msg.netfn = IPMI_NETFN_APP_REQUEST;
 msg.cmd = IPMI_GET_DEVICE_ID_CMD;
 msg.data = ((void*)0);
 msg.data_len = 0;
 intf->null_user_handler = device_id_fetcher;
 ipmi_panic_request_and_wait(intf, &addr, &msg);

 if (intf->local_event_generator) {

  msg.netfn = IPMI_NETFN_SENSOR_EVENT_REQUEST;
  msg.cmd = IPMI_GET_EVENT_RECEIVER_CMD;
  msg.data = ((void*)0);
  msg.data_len = 0;
  intf->null_user_handler = event_receiver_fetcher;
  ipmi_panic_request_and_wait(intf, &addr, &msg);
 }
 intf->null_user_handler = ((void*)0);






 if (((intf->event_receiver & 1) == 0)
     && (intf->event_receiver != 0)
     && (intf->event_receiver != intf->addrinfo[0].address)) {




  ipmb = (struct ipmi_ipmb_addr *) &addr;
  ipmb->addr_type = IPMI_IPMB_ADDR_TYPE;
  ipmb->channel = 0;
  ipmb->lun = intf->event_receiver_lun;
  ipmb->slave_addr = intf->event_receiver;
 } else if (intf->local_sel_device) {





  si = (struct ipmi_system_interface_addr *) &addr;
  si->addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
  si->channel = IPMI_BMC_CHANNEL;
  si->lun = 0;
 } else
  return;

 msg.netfn = IPMI_NETFN_STORAGE_REQUEST;
 msg.cmd = IPMI_ADD_SEL_ENTRY_CMD;
 msg.data = data;
 msg.data_len = 16;

 j = 0;
 while (*p) {
  int size = strlen(p);

  if (size > 11)
   size = 11;
  data[0] = 0;
  data[1] = 0;
  data[2] = 0xf0;
  data[3] = intf->addrinfo[0].address;
  data[4] = j++;




  strncpy(data+5, p, 11);
  p += size;

  ipmi_panic_request_and_wait(intf, &addr, &msg);
 }
}
