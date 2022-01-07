
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssif_info {int req_flags; int ssif_state; } ;


 unsigned char IPMI_GET_MSG_FLAGS_CMD ;
 int IPMI_NETFN_APP_REQUEST ;
 int SSIF_GETTING_FLAGS ;
 int SSIF_NORMAL ;
 int ipmi_ssif_unlock_cond (struct ssif_info*,unsigned long*) ;
 scalar_t__ start_send (struct ssif_info*,unsigned char*,int) ;

__attribute__((used)) static void start_flag_fetch(struct ssif_info *ssif_info, unsigned long *flags)
{
 unsigned char mb[2];

 ssif_info->req_flags = 0;
 ssif_info->ssif_state = SSIF_GETTING_FLAGS;
 ipmi_ssif_unlock_cond(ssif_info, flags);

 mb[0] = (IPMI_NETFN_APP_REQUEST << 2);
 mb[1] = IPMI_GET_MSG_FLAGS_CMD;
 if (start_send(ssif_info, mb, 2) != 0)
  ssif_info->ssif_state = SSIF_NORMAL;
}
