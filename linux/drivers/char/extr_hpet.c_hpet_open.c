
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct hpets {int hp_ntimer; struct hpet_dev* hp_dev; struct hpets* hp_next; } ;
struct hpet_dev {int hd_flags; scalar_t__ hd_irqdata; } ;
struct file {int f_mode; struct hpet_dev* private_data; } ;


 int EBUSY ;
 int EINVAL ;
 int FMODE_WRITE ;
 int HPET_OPEN ;
 int hpet_lock ;
 int hpet_mutex ;
 int hpet_timer_set_irq (struct hpet_dev*) ;
 struct hpets* hpets ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int hpet_open(struct inode *inode, struct file *file)
{
 struct hpet_dev *devp;
 struct hpets *hpetp;
 int i;

 if (file->f_mode & FMODE_WRITE)
  return -EINVAL;

 mutex_lock(&hpet_mutex);
 spin_lock_irq(&hpet_lock);

 for (devp = ((void*)0), hpetp = hpets; hpetp && !devp; hpetp = hpetp->hp_next)
  for (i = 0; i < hpetp->hp_ntimer; i++)
   if (hpetp->hp_dev[i].hd_flags & HPET_OPEN)
    continue;
   else {
    devp = &hpetp->hp_dev[i];
    break;
   }

 if (!devp) {
  spin_unlock_irq(&hpet_lock);
  mutex_unlock(&hpet_mutex);
  return -EBUSY;
 }

 file->private_data = devp;
 devp->hd_irqdata = 0;
 devp->hd_flags |= HPET_OPEN;
 spin_unlock_irq(&hpet_lock);
 mutex_unlock(&hpet_mutex);

 hpet_timer_set_irq(devp);

 return 0;
}
