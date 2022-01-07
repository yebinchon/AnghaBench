
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ data_to_read ;
 int ipmi_read_lock ;
 int poll_wait (struct file*,int *,int *) ;
 int read_q ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static __poll_t ipmi_poll(struct file *file, poll_table *wait)
{
 __poll_t mask = 0;

 poll_wait(file, &read_q, wait);

 spin_lock_irq(&ipmi_read_lock);
 if (data_to_read)
  mask |= (EPOLLIN | EPOLLRDNORM);
 spin_unlock_irq(&ipmi_read_lock);

 return mask;
}
