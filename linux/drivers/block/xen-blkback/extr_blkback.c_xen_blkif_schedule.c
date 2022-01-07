
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_vbd {scalar_t__ size; scalar_t__ feature_gnt_persistent; } ;
struct xen_blkif_ring {int waiting_reqs; int * xenblkd; int persistent_purge_work; scalar_t__ st_print; scalar_t__ next_lru; int shutdown_wq; int pending_free; int pending_free_wq; int wq; struct xen_blkif* blkif; } ;
struct xen_blkif {struct xen_vbd vbd; } ;


 int EACCES ;
 int LRU_INTERVAL ;
 int do_block_io_op (struct xen_blkif_ring*) ;
 int flush_work (int *) ;
 scalar_t__ jiffies ;
 scalar_t__ kthread_should_stop () ;
 int list_empty (int *) ;
 scalar_t__ log_stats ;
 unsigned long msecs_to_jiffies (int ) ;
 int print_stats (struct xen_blkif_ring*) ;
 int purge_persistent_gnt (struct xen_blkif_ring*) ;
 int set_freezable () ;
 int shrink_free_pagepool (struct xen_blkif_ring*,int ) ;
 int smp_mb () ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 scalar_t__ try_to_freeze () ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vbd_sz (struct xen_vbd*) ;
 int wait_event_interruptible (int ,scalar_t__) ;
 unsigned long wait_event_interruptible_timeout (int ,int,unsigned long) ;
 int xen_blkif_max_buffer_pages ;
 int xen_vbd_resize (struct xen_blkif*) ;

int xen_blkif_schedule(void *arg)
{
 struct xen_blkif_ring *ring = arg;
 struct xen_blkif *blkif = ring->blkif;
 struct xen_vbd *vbd = &blkif->vbd;
 unsigned long timeout;
 int ret;

 set_freezable();
 while (!kthread_should_stop()) {
  if (try_to_freeze())
   continue;
  if (unlikely(vbd->size != vbd_sz(vbd)))
   xen_vbd_resize(blkif);

  timeout = msecs_to_jiffies(LRU_INTERVAL);

  timeout = wait_event_interruptible_timeout(
   ring->wq,
   ring->waiting_reqs || kthread_should_stop(),
   timeout);
  if (timeout == 0)
   goto purge_gnt_list;
  timeout = wait_event_interruptible_timeout(
   ring->pending_free_wq,
   !list_empty(&ring->pending_free) ||
   kthread_should_stop(),
   timeout);
  if (timeout == 0)
   goto purge_gnt_list;

  ring->waiting_reqs = 0;
  smp_mb();

  ret = do_block_io_op(ring);
  if (ret > 0)
   ring->waiting_reqs = 1;
  if (ret == -EACCES)
   wait_event_interruptible(ring->shutdown_wq,
       kthread_should_stop());

purge_gnt_list:
  if (blkif->vbd.feature_gnt_persistent &&
      time_after(jiffies, ring->next_lru)) {
   purge_persistent_gnt(ring);
   ring->next_lru = jiffies + msecs_to_jiffies(LRU_INTERVAL);
  }


  shrink_free_pagepool(ring, xen_blkif_max_buffer_pages);

  if (log_stats && time_after(jiffies, ring->st_print))
   print_stats(ring);
 }


 flush_work(&ring->persistent_purge_work);

 if (log_stats)
  print_stats(ring);

 ring->xenblkd = ((void*)0);

 return 0;
}
