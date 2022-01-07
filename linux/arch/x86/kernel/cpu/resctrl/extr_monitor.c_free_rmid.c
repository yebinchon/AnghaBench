
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rmid_entry {int list; } ;


 struct rmid_entry* __rmid_entry (int ) ;
 int add_rmid_to_limbo (struct rmid_entry*) ;
 scalar_t__ is_llc_occupancy_enabled () ;
 int list_add_tail (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int rdtgroup_mutex ;
 int rmid_free_lru ;

void free_rmid(u32 rmid)
{
 struct rmid_entry *entry;

 if (!rmid)
  return;

 lockdep_assert_held(&rdtgroup_mutex);

 entry = __rmid_entry(rmid);

 if (is_llc_occupancy_enabled())
  add_rmid_to_limbo(entry);
 else
  list_add_tail(&entry->list, &rmid_free_lru);
}
