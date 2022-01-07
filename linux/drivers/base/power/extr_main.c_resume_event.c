
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int event; } ;
typedef TYPE_1__ pm_message_t ;


 TYPE_1__ PMSG_ON ;
 TYPE_1__ PMSG_RECOVER ;
 TYPE_1__ PMSG_RESTORE ;
 TYPE_1__ PMSG_RESUME ;





__attribute__((used)) static pm_message_t resume_event(pm_message_t sleep_state)
{
 switch (sleep_state.event) {
 case 128:
  return PMSG_RESUME;
 case 131:
 case 129:
  return PMSG_RECOVER;
 case 130:
  return PMSG_RESTORE;
 }
 return PMSG_ON;
}
