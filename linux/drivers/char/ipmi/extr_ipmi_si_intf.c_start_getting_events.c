
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smi_info {int si_state; TYPE_1__* curr_msg; } ;
struct TYPE_2__ {int* data; int data_size; } ;


 int IPMI_NETFN_APP_REQUEST ;
 int IPMI_READ_EVENT_MSG_BUFFER_CMD ;
 int SI_GETTING_EVENTS ;
 int start_new_msg (struct smi_info*,int*,int) ;

__attribute__((used)) static void start_getting_events(struct smi_info *smi_info)
{
 smi_info->curr_msg->data[0] = (IPMI_NETFN_APP_REQUEST << 2);
 smi_info->curr_msg->data[1] = IPMI_READ_EVENT_MSG_BUFFER_CMD;
 smi_info->curr_msg->data_size = 2;

 start_new_msg(smi_info, smi_info->curr_msg->data,
        smi_info->curr_msg->data_size);
 smi_info->si_state = SI_GETTING_EVENTS;
}
