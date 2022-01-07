
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhci_data {int readq; int read_wait; } ;
struct file {struct vhci_data* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int poll_wait (struct file*,int *,int *) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static __poll_t vhci_poll(struct file *file, poll_table *wait)
{
 struct vhci_data *data = file->private_data;

 poll_wait(file, &data->read_wait, wait);

 if (!skb_queue_empty(&data->readq))
  return EPOLLIN | EPOLLRDNORM;

 return EPOLLOUT | EPOLLWRNORM;
}
