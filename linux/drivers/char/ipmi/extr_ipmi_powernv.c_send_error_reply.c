
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipmi_smi_powernv {int intf; } ;
struct ipmi_smi_msg {int* rsp; int* data; int rsp_size; } ;


 int ipmi_smi_msg_received (int ,struct ipmi_smi_msg*) ;

__attribute__((used)) static void send_error_reply(struct ipmi_smi_powernv *smi,
  struct ipmi_smi_msg *msg, u8 completion_code)
{
 msg->rsp[0] = msg->data[0] | 0x4;
 msg->rsp[1] = msg->data[1];
 msg->rsp[2] = completion_code;
 msg->rsp_size = 3;
 ipmi_smi_msg_received(smi->intf, msg);
}
