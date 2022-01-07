
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int event; } ;
typedef TYPE_1__ pm_message_t ;


 TYPE_1__ PMSG_FREEZE ;
 TYPE_1__ PMSG_HIBERNATE ;
 TYPE_1__ PMSG_ON ;
 TYPE_1__ PMSG_SUSPEND ;





__attribute__((used)) static pm_message_t suspend_event(pm_message_t resume_msg)
{
 switch (resume_msg.event) {
 case 129:
  return PMSG_SUSPEND;
 case 128:
 case 130:
  return PMSG_FREEZE;
 case 131:
  return PMSG_HIBERNATE;
 }
 return PMSG_ON;
}
