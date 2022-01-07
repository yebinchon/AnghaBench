
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vector_private {scalar_t__ rx_irq; scalar_t__ tx_irq; int opened; int in_error; int lock; TYPE_1__* fds; int * tx_queue; int * rx_queue; TYPE_1__* header_txbuffer; TYPE_1__* header_rxbuffer; TYPE_1__* transport_data; TYPE_1__* bpf; int tx_poll; int tl; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int rx_fd; int tx_fd; struct TYPE_2__* remote_addr; } ;


 int del_timer (int *) ;
 int destroy_queue (int *) ;
 int kfree (TYPE_1__*) ;
 struct vector_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int os_close_file (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_kill (int *) ;
 int um_free_irq (scalar_t__,struct net_device*) ;

__attribute__((used)) static int vector_net_close(struct net_device *dev)
{
 struct vector_private *vp = netdev_priv(dev);
 unsigned long flags;

 netif_stop_queue(dev);
 del_timer(&vp->tl);

 if (vp->fds == ((void*)0))
  return 0;


 if (vp->rx_irq > 0) {
  um_free_irq(vp->rx_irq, dev);
  vp->rx_irq = 0;
 }
 if (vp->tx_irq > 0) {
  um_free_irq(vp->tx_irq, dev);
  vp->tx_irq = 0;
 }
 tasklet_kill(&vp->tx_poll);
 if (vp->fds->rx_fd > 0) {
  os_close_file(vp->fds->rx_fd);
  vp->fds->rx_fd = -1;
 }
 if (vp->fds->tx_fd > 0) {
  os_close_file(vp->fds->tx_fd);
  vp->fds->tx_fd = -1;
 }
 kfree(vp->bpf);
 kfree(vp->fds->remote_addr);
 kfree(vp->transport_data);
 kfree(vp->header_rxbuffer);
 kfree(vp->header_txbuffer);
 if (vp->rx_queue != ((void*)0))
  destroy_queue(vp->rx_queue);
 if (vp->tx_queue != ((void*)0))
  destroy_queue(vp->tx_queue);
 kfree(vp->fds);
 vp->fds = ((void*)0);
 spin_lock_irqsave(&vp->lock, flags);
 vp->opened = 0;
 vp->in_error = 0;
 spin_unlock_irqrestore(&vp->lock, flags);
 return 0;
}
