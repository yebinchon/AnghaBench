
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int RAC_ENABLED ;
 int RAC_SUSPENDED ;
 unsigned long SYS_RESTART ;
 int b15_rac_disable_and_flush () ;
 int b15_rac_flags ;
 int clear_bit (int ,int *) ;
 int rac_lock ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int b15_rac_reboot_notifier(struct notifier_block *nb,
       unsigned long action,
       void *data)
{




 if (action == SYS_RESTART) {
  spin_lock(&rac_lock);
  b15_rac_disable_and_flush();
  clear_bit(RAC_ENABLED, &b15_rac_flags);
  set_bit(RAC_SUSPENDED, &b15_rac_flags);
  spin_unlock(&rac_lock);
 }

 return NOTIFY_DONE;
}
