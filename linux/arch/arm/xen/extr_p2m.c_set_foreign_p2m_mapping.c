
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct gnttab_map_grant_ref {int host_addr; int dev_bus_addr; scalar_t__ status; } ;


 int XEN_PAGE_SHIFT ;
 int set_phys_to_machine (int,int) ;

int set_foreign_p2m_mapping(struct gnttab_map_grant_ref *map_ops,
       struct gnttab_map_grant_ref *kmap_ops,
       struct page **pages, unsigned int count)
{
 int i;

 for (i = 0; i < count; i++) {
  if (map_ops[i].status)
   continue;
  set_phys_to_machine(map_ops[i].host_addr >> XEN_PAGE_SHIFT,
        map_ops[i].dev_bus_addr >> XEN_PAGE_SHIFT);
 }

 return 0;
}
