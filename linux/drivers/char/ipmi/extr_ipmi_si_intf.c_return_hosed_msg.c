
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {struct ipmi_smi_msg* curr_msg; } ;
struct ipmi_smi_msg {int* rsp; int* data; int rsp_size; } ;


 int IPMI_ERR_UNSPECIFIED ;
 int deliver_recv_msg (struct smi_info*,struct ipmi_smi_msg*) ;

__attribute__((used)) static void return_hosed_msg(struct smi_info *smi_info, int cCode)
{
 struct ipmi_smi_msg *msg = smi_info->curr_msg;

 if (cCode < 0 || cCode > IPMI_ERR_UNSPECIFIED)
  cCode = IPMI_ERR_UNSPECIFIED;



 msg->rsp[0] = msg->data[0] | 4;
 msg->rsp[1] = msg->data[1];
 msg->rsp[2] = cCode;
 msg->rsp_size = 3;

 smi_info->curr_msg = ((void*)0);
 deliver_recv_msg(smi_info, msg);
}
