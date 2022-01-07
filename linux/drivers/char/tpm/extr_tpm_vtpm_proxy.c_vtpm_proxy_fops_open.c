
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proxy_dev {int state; } ;
struct file {struct proxy_dev* private_data; } ;


 int STATE_OPENED_FLAG ;

__attribute__((used)) static void vtpm_proxy_fops_open(struct file *filp)
{
 struct proxy_dev *proxy_dev = filp->private_data;

 proxy_dev->state |= STATE_OPENED_FLAG;
}
