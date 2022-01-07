
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int dummy; } ;
typedef enum si_sm_result { ____Placeholder_si_sm_result } si_sm_result ;


 int SI_SHORT_TIMEOUT_USEC ;
 int SI_SM_IDLE ;
 int smi_event_handler (struct smi_info*,int ) ;
 int udelay (int ) ;

__attribute__((used)) static void flush_messages(void *send_info)
{
 struct smi_info *smi_info = send_info;
 enum si_sm_result result;





 result = smi_event_handler(smi_info, 0);
 while (result != SI_SM_IDLE) {
  udelay(SI_SHORT_TIMEOUT_USEC);
  result = smi_event_handler(smi_info, SI_SHORT_TIMEOUT_USEC);
 }
}
