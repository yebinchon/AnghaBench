
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xilly_channel {TYPE_1__* endpoint; int rd_spinlock; int rd_full; int rd_wait; scalar_t__ rd_allow_partial; int wr_spinlock; scalar_t__ wr_hangup; scalar_t__ wr_ready; int wr_empty; int wr_ready_wait; int wr_wait; scalar_t__ wr_supports_nonempty; int wr_synchronous; } ;
struct file {struct xilly_channel* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {scalar_t__ fatal_error; int ep_wait; } ;


 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static __poll_t xillybus_poll(struct file *filp, poll_table *wait)
{
 struct xilly_channel *channel = filp->private_data;
 __poll_t mask = 0;
 unsigned long flags;

 poll_wait(filp, &channel->endpoint->ep_wait, wait);
 if (!channel->wr_synchronous && channel->wr_supports_nonempty) {
  poll_wait(filp, &channel->wr_wait, wait);
  poll_wait(filp, &channel->wr_ready_wait, wait);

  spin_lock_irqsave(&channel->wr_spinlock, flags);
  if (!channel->wr_empty || channel->wr_ready)
   mask |= EPOLLIN | EPOLLRDNORM;

  if (channel->wr_hangup)





   mask |= EPOLLIN | EPOLLRDNORM;
  spin_unlock_irqrestore(&channel->wr_spinlock, flags);
 }







 if (channel->rd_allow_partial) {
  poll_wait(filp, &channel->rd_wait, wait);

  spin_lock_irqsave(&channel->rd_spinlock, flags);
  if (!channel->rd_full)
   mask |= EPOLLOUT | EPOLLWRNORM;
  spin_unlock_irqrestore(&channel->rd_spinlock, flags);
 }

 if (channel->endpoint->fatal_error)
  mask |= EPOLLERR;

 return mask;
}
