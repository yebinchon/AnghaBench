
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_queue {void** skbuff_vector; int queue_depth; struct mmsghdr* mmsg_vector; int dev; } ;
struct vector_private {int dummy; } ;
struct mmsghdr {int msg_hdr; } ;


 struct vector_private* netdev_priv (int ) ;
 void* prep_skb (struct vector_private*,int *) ;

__attribute__((used)) static void prep_queue_for_rx(struct vector_queue *qi)
{
 struct vector_private *vp = netdev_priv(qi->dev);
 struct mmsghdr *mmsg_vector = qi->mmsg_vector;
 void **skbuff_vector = qi->skbuff_vector;
 int i;

 if (qi->queue_depth == 0)
  return;
 for (i = 0; i < qi->queue_depth; i++) {





  *skbuff_vector = prep_skb(vp, &mmsg_vector->msg_hdr);
  skbuff_vector++;
  mmsg_vector++;
 }
 qi->queue_depth = 0;
}
