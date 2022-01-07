
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdt_resource {int num_rmid; } ;
struct rdt_domain {int mbm_over; void* mbm_total; int rmid_busy_llc; void* mbm_local; int cqm_limbo; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int MBM_OVERFLOW_INTERVAL ;
 int bitmap_free (int ) ;
 int bitmap_zalloc (int ,int ) ;
 int cqm_handle_limbo ;
 scalar_t__ is_llc_occupancy_enabled () ;
 scalar_t__ is_mbm_enabled () ;
 scalar_t__ is_mbm_local_enabled () ;
 scalar_t__ is_mbm_total_enabled () ;
 void* kcalloc (int ,size_t,int ) ;
 int kfree (void*) ;
 int mbm_handle_overflow ;
 int mbm_setup_overflow_handler (struct rdt_domain*,int ) ;

__attribute__((used)) static int domain_setup_mon_state(struct rdt_resource *r, struct rdt_domain *d)
{
 size_t tsize;

 if (is_llc_occupancy_enabled()) {
  d->rmid_busy_llc = bitmap_zalloc(r->num_rmid, GFP_KERNEL);
  if (!d->rmid_busy_llc)
   return -ENOMEM;
  INIT_DELAYED_WORK(&d->cqm_limbo, cqm_handle_limbo);
 }
 if (is_mbm_total_enabled()) {
  tsize = sizeof(*d->mbm_total);
  d->mbm_total = kcalloc(r->num_rmid, tsize, GFP_KERNEL);
  if (!d->mbm_total) {
   bitmap_free(d->rmid_busy_llc);
   return -ENOMEM;
  }
 }
 if (is_mbm_local_enabled()) {
  tsize = sizeof(*d->mbm_local);
  d->mbm_local = kcalloc(r->num_rmid, tsize, GFP_KERNEL);
  if (!d->mbm_local) {
   bitmap_free(d->rmid_busy_llc);
   kfree(d->mbm_total);
   return -ENOMEM;
  }
 }

 if (is_mbm_enabled()) {
  INIT_DELAYED_WORK(&d->mbm_over, mbm_handle_overflow);
  mbm_setup_overflow_handler(d, MBM_OVERFLOW_INTERVAL);
 }

 return 0;
}
