
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_user {struct ipmi_smi* intf; } ;
struct ipmi_smi {int maintenance_mode; int maintenance_mode_enable; int maintenance_mode_lock; int auto_maintenance_timeout; } ;


 int EINVAL ;
 int ENODEV ;



 struct ipmi_user* acquire_ipmi_user (struct ipmi_user*,int*) ;
 int maintenance_mode_update (struct ipmi_smi*) ;
 int release_ipmi_user (struct ipmi_user*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ipmi_set_maintenance_mode(struct ipmi_user *user, int mode)
{
 int rv = 0, index;
 unsigned long flags;
 struct ipmi_smi *intf = user->intf;

 user = acquire_ipmi_user(user, &index);
 if (!user)
  return -ENODEV;

 spin_lock_irqsave(&intf->maintenance_mode_lock, flags);
 if (intf->maintenance_mode != mode) {
  switch (mode) {
  case 130:
   intf->maintenance_mode_enable
    = (intf->auto_maintenance_timeout > 0);
   break;

  case 129:
   intf->maintenance_mode_enable = 0;
   break;

  case 128:
   intf->maintenance_mode_enable = 1;
   break;

  default:
   rv = -EINVAL;
   goto out_unlock;
  }
  intf->maintenance_mode = mode;

  maintenance_mode_update(intf);
 }
 out_unlock:
 spin_unlock_irqrestore(&intf->maintenance_mode_lock, flags);
 release_ipmi_user(user, index);

 return rv;
}
