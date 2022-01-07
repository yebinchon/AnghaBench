
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_file_private {int recv_msg_lock; int recv_msgs; int wait; } ;
struct file {struct ipmi_file_private* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static __poll_t ipmi_poll(struct file *file, poll_table *wait)
{
 struct ipmi_file_private *priv = file->private_data;
 __poll_t mask = 0;
 unsigned long flags;

 poll_wait(file, &priv->wait, wait);

 spin_lock_irqsave(&priv->recv_msg_lock, flags);

 if (!list_empty(&priv->recv_msgs))
  mask |= (EPOLLIN | EPOLLRDNORM);

 spin_unlock_irqrestore(&priv->recv_msg_lock, flags);

 return mask;
}
