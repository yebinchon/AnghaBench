
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int si_state; } ;


 unsigned char IPMI_GET_BMC_GLOBAL_ENABLES_CMD ;
 int IPMI_NETFN_APP_REQUEST ;
 int SI_CHECKING_ENABLES ;
 int start_new_msg (struct smi_info*,unsigned char*,int) ;

__attribute__((used)) static void start_check_enables(struct smi_info *smi_info)
{
 unsigned char msg[2];

 msg[0] = (IPMI_NETFN_APP_REQUEST << 2);
 msg[1] = IPMI_GET_BMC_GLOBAL_ENABLES_CMD;

 start_new_msg(smi_info, msg, 2);
 smi_info->si_state = SI_CHECKING_ENABLES;
}
