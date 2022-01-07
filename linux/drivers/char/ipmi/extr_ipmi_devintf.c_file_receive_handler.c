
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_recv_msg {int link; } ;
struct ipmi_file_private {int fasync_queue; int wait; int recv_msg_lock; int recv_msgs; } ;


 int POLL_IN ;
 int SIGIO ;
 int kill_fasync (int *,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void file_receive_handler(struct ipmi_recv_msg *msg,
     void *handler_data)
{
 struct ipmi_file_private *priv = handler_data;
 int was_empty;
 unsigned long flags;

 spin_lock_irqsave(&priv->recv_msg_lock, flags);
 was_empty = list_empty(&priv->recv_msgs);
 list_add_tail(&msg->link, &priv->recv_msgs);
 spin_unlock_irqrestore(&priv->recv_msg_lock, flags);

 if (was_empty) {
  wake_up_interruptible(&priv->wait);
  kill_fasync(&priv->fasync_queue, SIGIO, POLL_IN);
 }
}
