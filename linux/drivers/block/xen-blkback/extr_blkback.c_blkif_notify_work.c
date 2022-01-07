
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_blkif_ring {int waiting_reqs; int wq; } ;


 int wake_up (int *) ;

__attribute__((used)) static void blkif_notify_work(struct xen_blkif_ring *ring)
{
 ring->waiting_reqs = 1;
 wake_up(&ring->wq);
}
