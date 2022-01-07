
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct gnttab_unmap_grant_ref {int host_addr; } ;


 int INVALID_P2M_ENTRY ;
 int XEN_PAGE_SHIFT ;
 int set_phys_to_machine (int,int ) ;

int clear_foreign_p2m_mapping(struct gnttab_unmap_grant_ref *unmap_ops,
         struct gnttab_unmap_grant_ref *kunmap_ops,
         struct page **pages, unsigned int count)
{
 int i;

 for (i = 0; i < count; i++) {
  set_phys_to_machine(unmap_ops[i].host_addr >> XEN_PAGE_SHIFT,
        INVALID_P2M_ENTRY);
 }

 return 0;
}
