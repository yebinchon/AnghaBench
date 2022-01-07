
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_blkif_ring {int persistent_gnt_in_use; } ;
struct persistent_gnt {int active; int last_used; } ;


 int atomic_dec (int *) ;
 int jiffies ;
 int pr_alert_ratelimited (char*) ;

__attribute__((used)) static void put_persistent_gnt(struct xen_blkif_ring *ring,
                               struct persistent_gnt *persistent_gnt)
{
 if (!persistent_gnt->active)
  pr_alert_ratelimited("freeing a grant already unused\n");
 persistent_gnt->last_used = jiffies;
 persistent_gnt->active = 0;
 atomic_dec(&ring->persistent_gnt_in_use);
}
