
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipmi_smi {unsigned int last_watch_mask; int watch_lock; int send_info; TYPE_1__* handlers; int command_waiters; int watchdog_waiters; int response_waiters; } ;
struct TYPE_2__ {int (* set_need_watch ) (int ,unsigned int) ;} ;


 unsigned int IPMI_WATCH_MASK_CHECK_COMMANDS ;
 unsigned int IPMI_WATCH_MASK_CHECK_MESSAGES ;
 unsigned int IPMI_WATCH_MASK_CHECK_WATCHDOG ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,unsigned int) ;

__attribute__((used)) static void smi_add_watch(struct ipmi_smi *intf, unsigned int flags)
{
 unsigned long iflags;

 if (!intf->handlers->set_need_watch)
  return;

 spin_lock_irqsave(&intf->watch_lock, iflags);
 if (flags & IPMI_WATCH_MASK_CHECK_MESSAGES)
  intf->response_waiters++;

 if (flags & IPMI_WATCH_MASK_CHECK_WATCHDOG)
  intf->watchdog_waiters++;

 if (flags & IPMI_WATCH_MASK_CHECK_COMMANDS)
  intf->command_waiters++;

 if ((intf->last_watch_mask & flags) != flags) {
  intf->last_watch_mask |= flags;
  intf->handlers->set_need_watch(intf->send_info,
            intf->last_watch_mask);
 }
 spin_unlock_irqrestore(&intf->watch_lock, iflags);
}
