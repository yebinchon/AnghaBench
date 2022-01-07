
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reader_dev {int poll_timer; } ;
struct pcmcia_device {int open; struct reader_dev* priv; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct reader_dev* private_data; } ;


 int CM_MAX_DEV ;
 int DEBUGP (int,struct reader_dev*,char*) ;
 int EAGAIN ;
 int EBUSY ;
 int ENODEV ;
 int O_NONBLOCK ;
 scalar_t__ POLL_PERIOD ;
 int cm4040_mutex ;
 struct pcmcia_device** dev_table ;
 int iminor (struct inode*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int pcmcia_dev_present (struct pcmcia_device*) ;

__attribute__((used)) static int cm4040_open(struct inode *inode, struct file *filp)
{
 struct reader_dev *dev;
 struct pcmcia_device *link;
 int minor = iminor(inode);
 int ret;

 if (minor >= CM_MAX_DEV)
  return -ENODEV;

 mutex_lock(&cm4040_mutex);
 link = dev_table[minor];
 if (link == ((void*)0) || !pcmcia_dev_present(link)) {
  ret = -ENODEV;
  goto out;
 }

 if (link->open) {
  ret = -EBUSY;
  goto out;
 }

 dev = link->priv;
 filp->private_data = dev;

 if (filp->f_flags & O_NONBLOCK) {
  DEBUGP(4, dev, "filep->f_flags O_NONBLOCK set\n");
  ret = -EAGAIN;
  goto out;
 }

 link->open = 1;

 mod_timer(&dev->poll_timer, jiffies + POLL_PERIOD);

 DEBUGP(2, dev, "<- cm4040_open (successfully)\n");
 ret = nonseekable_open(inode, filp);
out:
 mutex_unlock(&cm4040_mutex);
 return ret;
}
