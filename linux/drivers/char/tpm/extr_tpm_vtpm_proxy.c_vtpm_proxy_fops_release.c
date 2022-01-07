
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proxy_dev {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct proxy_dev* private_data; } ;


 int vtpm_proxy_delete_device (struct proxy_dev*) ;

__attribute__((used)) static int vtpm_proxy_fops_release(struct inode *inode, struct file *filp)
{
 struct proxy_dev *proxy_dev = filp->private_data;

 filp->private_data = ((void*)0);

 vtpm_proxy_delete_device(proxy_dev);

 return 0;
}
