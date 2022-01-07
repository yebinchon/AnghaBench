
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int si_state; } ;


 unsigned char IPMI_CLEAR_MSG_FLAGS_CMD ;
 int IPMI_NETFN_APP_REQUEST ;
 int SI_CLEARING_FLAGS ;
 unsigned char WDT_PRE_TIMEOUT_INT ;
 int start_new_msg (struct smi_info*,unsigned char*,int) ;

__attribute__((used)) static void start_clear_flags(struct smi_info *smi_info)
{
 unsigned char msg[3];


 msg[0] = (IPMI_NETFN_APP_REQUEST << 2);
 msg[1] = IPMI_CLEAR_MSG_FLAGS_CMD;
 msg[2] = WDT_PRE_TIMEOUT_INT;

 start_new_msg(smi_info, msg, 3);
 smi_info->si_state = SI_CLEARING_FLAGS;
}
