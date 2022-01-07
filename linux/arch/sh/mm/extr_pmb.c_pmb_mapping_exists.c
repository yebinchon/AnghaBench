
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmb_entry {unsigned long vpn; unsigned long size; scalar_t__ ppn; struct pmb_entry* link; } ;
typedef scalar_t__ phys_addr_t ;


 int ARRAY_SIZE (struct pmb_entry*) ;
 struct pmb_entry* pmb_entry_list ;
 int pmb_map ;
 int pmb_rwlock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int test_bit (int,int ) ;

__attribute__((used)) static bool pmb_mapping_exists(unsigned long vaddr, phys_addr_t phys,
          unsigned long size)
{
 int i;

 read_lock(&pmb_rwlock);

 for (i = 0; i < ARRAY_SIZE(pmb_entry_list); i++) {
  struct pmb_entry *pmbe, *iter;
  unsigned long span;

  if (!test_bit(i, pmb_map))
   continue;

  pmbe = &pmb_entry_list[i];




  if ((vaddr < pmbe->vpn) || (vaddr >= (pmbe->vpn + pmbe->size)))
   continue;
  if ((phys < pmbe->ppn) || (phys >= (pmbe->ppn + pmbe->size)))
   continue;




  if (size <= pmbe->size) {
   read_unlock(&pmb_rwlock);
   return 1;
  }

  span = pmbe->size;





  for (iter = pmbe->link; iter; iter = iter->link)
   span += iter->size;




  if (size <= span) {
   read_unlock(&pmb_rwlock);
   return 1;
  }
 }

 read_unlock(&pmb_rwlock);
 return 0;
}
