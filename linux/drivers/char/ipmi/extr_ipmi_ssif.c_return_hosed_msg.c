
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssif_info {int dummy; } ;
struct ipmi_smi_msg {int* rsp; int* data; int rsp_size; } ;


 int deliver_recv_msg (struct ssif_info*,struct ipmi_smi_msg*) ;
 int hosed ;
 int ssif_inc_stat (struct ssif_info*,int ) ;

__attribute__((used)) static void return_hosed_msg(struct ssif_info *ssif_info,
        struct ipmi_smi_msg *msg)
{
 ssif_inc_stat(ssif_info, hosed);


 msg->rsp[0] = msg->data[0] | 4;
 msg->rsp[1] = msg->data[1];
 msg->rsp[2] = 0xFF;
 msg->rsp_size = 3;

 deliver_recv_msg(ssif_info, msg);
}
