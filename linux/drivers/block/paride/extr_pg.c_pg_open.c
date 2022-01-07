
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg {int name; int access; int * bufptr; scalar_t__ busy; int present; } ;
struct inode {int dummy; } ;
struct file {struct pg* private_data; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PG_MAX_DATA ;
 int PG_UNITS ;
 int clear_bit (int ,int *) ;
 struct pg* devices ;
 int iminor (struct inode*) ;
 int * kmalloc (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pg_identify (struct pg*,int) ;
 int pg_mutex ;
 int pg_reset (struct pg*) ;
 int printk (char*,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int verbose ;

__attribute__((used)) static int pg_open(struct inode *inode, struct file *file)
{
 int unit = iminor(inode) & 0x7f;
 struct pg *dev = &devices[unit];
 int ret = 0;

 mutex_lock(&pg_mutex);
 if ((unit >= PG_UNITS) || (!dev->present)) {
  ret = -ENODEV;
  goto out;
 }

 if (test_and_set_bit(0, &dev->access)) {
  ret = -EBUSY;
  goto out;
 }

 if (dev->busy) {
  pg_reset(dev);
  dev->busy = 0;
 }

 pg_identify(dev, (verbose > 1));

 dev->bufptr = kmalloc(PG_MAX_DATA, GFP_KERNEL);
 if (dev->bufptr == ((void*)0)) {
  clear_bit(0, &dev->access);
  printk("%s: buffer allocation failed\n", dev->name);
  ret = -ENOMEM;
  goto out;
 }

 file->private_data = dev;

out:
 mutex_unlock(&pg_mutex);
 return ret;
}
