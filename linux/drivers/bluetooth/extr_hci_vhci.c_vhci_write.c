
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhci_data {int dummy; } ;
struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {struct vhci_data* private_data; } ;
typedef int ssize_t ;


 int vhci_get_user (struct vhci_data*,struct iov_iter*) ;

__attribute__((used)) static ssize_t vhci_write(struct kiocb *iocb, struct iov_iter *from)
{
 struct file *file = iocb->ki_filp;
 struct vhci_data *data = file->private_data;

 return vhci_get_user(data, from);
}
