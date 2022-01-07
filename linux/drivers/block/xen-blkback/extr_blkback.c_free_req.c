
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_blkif_ring {int pending_free_wq; int pending_free_lock; int pending_free; } ;
struct pending_req {int free_list; } ;


 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void free_req(struct xen_blkif_ring *ring, struct pending_req *req)
{
 unsigned long flags;
 int was_empty;

 spin_lock_irqsave(&ring->pending_free_lock, flags);
 was_empty = list_empty(&ring->pending_free);
 list_add(&req->free_list, &ring->pending_free);
 spin_unlock_irqrestore(&ring->pending_free_lock, flags);
 if (was_empty)
  wake_up(&ring->pending_free_wq);
}
