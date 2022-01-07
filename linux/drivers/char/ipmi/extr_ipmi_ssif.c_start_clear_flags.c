
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssif_info {unsigned char msg_flags; int ssif_state; } ;


 unsigned char IPMI_CLEAR_MSG_FLAGS_CMD ;
 int IPMI_NETFN_APP_REQUEST ;
 int SSIF_CLEARING_FLAGS ;
 int SSIF_NORMAL ;
 unsigned char WDT_PRE_TIMEOUT_INT ;
 int ipmi_ssif_unlock_cond (struct ssif_info*,unsigned long*) ;
 scalar_t__ start_send (struct ssif_info*,unsigned char*,int) ;

__attribute__((used)) static void start_clear_flags(struct ssif_info *ssif_info, unsigned long *flags)
{
 unsigned char msg[3];

 ssif_info->msg_flags &= ~WDT_PRE_TIMEOUT_INT;
 ssif_info->ssif_state = SSIF_CLEARING_FLAGS;
 ipmi_ssif_unlock_cond(ssif_info, flags);


 msg[0] = (IPMI_NETFN_APP_REQUEST << 2);
 msg[1] = IPMI_CLEAR_MSG_FLAGS_CMD;
 msg[2] = WDT_PRE_TIMEOUT_INT;

 if (start_send(ssif_info, msg, 3) != 0) {

  ssif_info->ssif_state = SSIF_NORMAL;
 }
}
