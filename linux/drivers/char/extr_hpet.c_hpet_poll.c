
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpet_dev {unsigned long hd_irqdata; int hd_waitqueue; int hd_ireqfreq; } ;
struct file {struct hpet_dev* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int hpet_lock ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static __poll_t hpet_poll(struct file *file, poll_table * wait)
{
 unsigned long v;
 struct hpet_dev *devp;

 devp = file->private_data;

 if (!devp->hd_ireqfreq)
  return 0;

 poll_wait(file, &devp->hd_waitqueue, wait);

 spin_lock_irq(&hpet_lock);
 v = devp->hd_irqdata;
 spin_unlock_irq(&hpet_lock);

 if (v != 0)
  return EPOLLIN | EPOLLRDNORM;

 return 0;
}
