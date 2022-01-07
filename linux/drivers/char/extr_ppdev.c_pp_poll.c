
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_struct {int irqc; int irq_wait; } ;
struct file {struct pp_struct* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ atomic_read (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t pp_poll(struct file *file, poll_table *wait)
{
 struct pp_struct *pp = file->private_data;
 __poll_t mask = 0;

 poll_wait(file, &pp->irq_wait, wait);
 if (atomic_read(&pp->irqc))
  mask |= EPOLLIN | EPOLLRDNORM;

 return mask;
}
