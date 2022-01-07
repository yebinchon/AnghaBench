
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct lanai_dev {int conf1; int timer; int backlog_vccs; int servicelock; } ;


 int CONFIG1_POWERDOWN ;
 scalar_t__ LANAI_POLL_PERIOD ;
 struct lanai_dev* from_timer (int ,struct timer_list*,int ) ;
 int get_statistics (struct lanai_dev*) ;
 int iter_dequeue ;
 scalar_t__ jiffies ;
 struct lanai_dev* lanai ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mod_timer (int *,scalar_t__) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int run_service (struct lanai_dev*) ;
 scalar_t__ spin_trylock (int *) ;
 int spin_unlock (int *) ;
 int timer ;
 int vcc_sklist_lock ;
 int vci_bitfield_iterate (struct lanai_dev*,int ,int ) ;

__attribute__((used)) static void lanai_timed_poll(struct timer_list *t)
{
 struct lanai_dev *lanai = from_timer(lanai, t, timer);

 unsigned long flags;




 local_irq_save(flags);

 if (spin_trylock(&lanai->servicelock)) {
  run_service(lanai);
  spin_unlock(&lanai->servicelock);
 }


 read_lock(&vcc_sklist_lock);
 vci_bitfield_iterate(lanai, lanai->backlog_vccs, iter_dequeue);
 read_unlock(&vcc_sklist_lock);
 local_irq_restore(flags);

 get_statistics(lanai);

 mod_timer(&lanai->timer, jiffies + LANAI_POLL_PERIOD);
}
