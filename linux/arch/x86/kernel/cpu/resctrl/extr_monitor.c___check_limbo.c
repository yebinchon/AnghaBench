
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rmid_entry {int list; int busy; int rmid; } ;
struct rdt_resource {scalar_t__ num_rmid; } ;
struct rdt_domain {int rmid_busy_llc; } ;


 size_t RDT_RESOURCE_L3 ;
 struct rmid_entry* __rmid_entry (scalar_t__) ;
 int clear_bit (int ,int ) ;
 scalar_t__ find_next_bit (int ,scalar_t__,scalar_t__) ;
 int list_add_tail (int *,int *) ;
 struct rdt_resource* rdt_resources_all ;
 int rmid_dirty (struct rmid_entry*) ;
 int rmid_free_lru ;
 int rmid_limbo_count ;

void __check_limbo(struct rdt_domain *d, bool force_free)
{
 struct rmid_entry *entry;
 struct rdt_resource *r;
 u32 crmid = 1, nrmid;

 r = &rdt_resources_all[RDT_RESOURCE_L3];







 for (;;) {
  nrmid = find_next_bit(d->rmid_busy_llc, r->num_rmid, crmid);
  if (nrmid >= r->num_rmid)
   break;

  entry = __rmid_entry(nrmid);
  if (force_free || !rmid_dirty(entry)) {
   clear_bit(entry->rmid, d->rmid_busy_llc);
   if (!--entry->busy) {
    rmid_limbo_count--;
    list_add_tail(&entry->list, &rmid_free_lru);
   }
  }
  crmid = nrmid + 1;
 }
}
