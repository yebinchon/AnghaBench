
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scr24x_dev {int refcnt; } ;
struct inode {int dummy; } ;
struct file {struct scr24x_dev* private_data; } ;


 int kref_put (int *,int ) ;
 int scr24x_delete ;

__attribute__((used)) static int scr24x_release(struct inode *inode, struct file *filp)
{
 struct scr24x_dev *dev = filp->private_data;







 kref_put(&dev->refcnt, scr24x_delete);
 return 0;
}
