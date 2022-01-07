
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vector_queue {int max_depth; int queue_depth; int head; int head_lock; int dev; struct mmsghdr* mmsg_vector; int tail_lock; } ;
struct TYPE_4__ {int tx_queue_max; int tx_queue_running_average; int tx_restart_queue; } ;
struct vector_private {int in_write_poll; int in_error; int tx_poll; TYPE_2__ estats; int dev; TYPE_1__* fds; } ;
struct mmsghdr {int dummy; } ;
struct TYPE_3__ {int tx_fd; } ;


 int consume_vector_skbs (struct vector_queue*,int) ;
 scalar_t__ net_ratelimit () ;
 int netdev_err (int ,char*,int) ;
 struct vector_private* netdev_priv (int ) ;
 int netif_trans_update (int ) ;
 int netif_wake_queue (int ) ;
 scalar_t__ spin_trylock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;
 int uml_vector_sendmmsg (int ,struct mmsghdr*,int,int ) ;

__attribute__((used)) static int vector_send(struct vector_queue *qi)
{
 struct vector_private *vp = netdev_priv(qi->dev);
 struct mmsghdr *send_from;
 int result = 0, send_len, queue_depth = qi->max_depth;

 if (spin_trylock(&qi->head_lock)) {
  if (spin_trylock(&qi->tail_lock)) {

   queue_depth = qi->queue_depth;
   spin_unlock(&qi->tail_lock);
   while (queue_depth > 0) {

    send_len = queue_depth;
    send_from = qi->mmsg_vector;
    send_from += qi->head;

    if (send_len + qi->head > qi->max_depth)
     send_len = qi->max_depth - qi->head;

    if (send_len > 0) {
     result = uml_vector_sendmmsg(
       vp->fds->tx_fd,
       send_from,
       send_len,
       0
     );
     vp->in_write_poll =
      (result != send_len);
    }





    if (result < 0) {
     if (net_ratelimit())
      netdev_err(vp->dev, "sendmmsg err=%i\n",
       result);
     vp->in_error = 1;
     result = send_len;
    }
    if (result > 0) {
     queue_depth =
      consume_vector_skbs(qi, result);




     if (result > vp->estats.tx_queue_max)
      vp->estats.tx_queue_max = result;
     vp->estats.tx_queue_running_average =
      (vp->estats.tx_queue_running_average + result) >> 1;
    }
    netif_trans_update(qi->dev);
    netif_wake_queue(qi->dev);



    if (result != send_len) {
     vp->estats.tx_restart_queue++;
     break;
    }
   }
  }
  spin_unlock(&qi->head_lock);
 } else {
  tasklet_schedule(&vp->tx_poll);
 }
 return queue_depth;
}
