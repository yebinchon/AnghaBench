
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssif_info {int ssif_state; int * curr_msg; } ;
struct ipmi_smi_msg {int data_size; int data; } ;


 int SSIF_NORMAL ;
 int ipmi_free_smi_msg (struct ipmi_smi_msg*) ;
 unsigned long* ipmi_ssif_lock_cond (struct ssif_info*,unsigned long*) ;
 int ipmi_ssif_unlock_cond (struct ssif_info*,unsigned long*) ;
 scalar_t__ start_send (struct ssif_info*,int ,int ) ;

__attribute__((used)) static void check_start_send(struct ssif_info *ssif_info, unsigned long *flags,
        struct ipmi_smi_msg *msg)
{
 if (start_send(ssif_info, msg->data, msg->data_size) != 0) {
  unsigned long oflags;

  flags = ipmi_ssif_lock_cond(ssif_info, &oflags);
  ssif_info->curr_msg = ((void*)0);
  ssif_info->ssif_state = SSIF_NORMAL;
  ipmi_ssif_unlock_cond(ssif_info, flags);
  ipmi_free_smi_msg(msg);
 }
}
