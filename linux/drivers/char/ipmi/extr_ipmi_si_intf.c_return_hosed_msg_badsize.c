
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {struct ipmi_smi_msg* curr_msg; } ;
struct ipmi_smi_msg {int* rsp; int* data; int rsp_size; } ;


 int CANNOT_RETURN_REQUESTED_LENGTH ;
 int deliver_recv_msg (struct smi_info*,struct ipmi_smi_msg*) ;

__attribute__((used)) static void return_hosed_msg_badsize(struct smi_info *smi_info)
{
 struct ipmi_smi_msg *msg = smi_info->curr_msg;


 msg->rsp[0] = msg->data[0] | 4;
 msg->rsp[1] = msg->data[1];
 msg->rsp[2] = CANNOT_RETURN_REQUESTED_LENGTH;
 msg->rsp_size = 3;
 smi_info->curr_msg = ((void*)0);
 deliver_recv_msg(smi_info, msg);
}
