
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int SH_THREAD_UAC_NOPRINT ;
 int SH_THREAD_UAC_SIGBUS ;
 unsigned int UM_FIXUP ;
 unsigned int UM_SIGNAL ;
 unsigned int UM_WARN ;
 TYPE_2__* current ;
 unsigned int se_usermode ;

unsigned int unaligned_user_action(void)
{
 unsigned int action = se_usermode;

 if (current->thread.flags & SH_THREAD_UAC_SIGBUS) {
  action &= ~UM_FIXUP;
  action |= UM_SIGNAL;
 }

 if (current->thread.flags & SH_THREAD_UAC_NOPRINT)
  action &= ~UM_WARN;

 return action;
}
