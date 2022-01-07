
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_blkif_ring {int inflight; struct xen_blkif* blkif; } ;
struct xen_blkif {int drain; int drain_complete; } ;


 int HZ ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int kthread_should_stop () ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static void xen_blk_drain_io(struct xen_blkif_ring *ring)
{
 struct xen_blkif *blkif = ring->blkif;

 atomic_set(&blkif->drain, 1);
 do {
  if (atomic_read(&ring->inflight) == 0)
   break;
  wait_for_completion_interruptible_timeout(
    &blkif->drain_complete, HZ);

  if (!atomic_read(&blkif->drain))
   break;
 } while (!kthread_should_stop());
 atomic_set(&blkif->drain, 0);
}
