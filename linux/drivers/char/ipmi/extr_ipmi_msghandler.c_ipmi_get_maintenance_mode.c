
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipmi_user {TYPE_1__* intf; } ;
struct TYPE_2__ {int maintenance_mode; int maintenance_mode_lock; } ;


 int ENODEV ;
 struct ipmi_user* acquire_ipmi_user (struct ipmi_user*,int*) ;
 int release_ipmi_user (struct ipmi_user*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ipmi_get_maintenance_mode(struct ipmi_user *user)
{
 int mode, index;
 unsigned long flags;

 user = acquire_ipmi_user(user, &index);
 if (!user)
  return -ENODEV;

 spin_lock_irqsave(&user->intf->maintenance_mode_lock, flags);
 mode = user->intf->maintenance_mode;
 spin_unlock_irqrestore(&user->intf->maintenance_mode_lock, flags);
 release_ipmi_user(user, index);

 return mode;
}
