
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct topa {scalar_t__ last; } ;
struct topa_page {struct topa topa; } ;
struct page {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {int base; int end; } ;


 int PT_CAP_topa_multiple_entries ;
 TYPE_1__* TOPA_ENTRY (struct topa*,int) ;
 int TOPA_SHIFT ;
 int __GFP_ZERO ;
 struct page* alloc_pages_node (int,int,int ) ;
 int cpu_to_node (int) ;
 int intel_pt_validate_hw_cap (int ) ;
 struct topa_page* page_address (struct page*) ;
 int page_to_phys (struct page*) ;

__attribute__((used)) static struct topa *topa_alloc(int cpu, gfp_t gfp)
{
 int node = cpu_to_node(cpu);
 struct topa_page *tp;
 struct page *p;

 p = alloc_pages_node(node, gfp | __GFP_ZERO, 0);
 if (!p)
  return ((void*)0);

 tp = page_address(p);
 tp->topa.last = 0;





 if (!intel_pt_validate_hw_cap(PT_CAP_topa_multiple_entries)) {
  TOPA_ENTRY(&tp->topa, 1)->base = page_to_phys(p) >> TOPA_SHIFT;
  TOPA_ENTRY(&tp->topa, 1)->end = 1;
 }

 return &tp->topa;
}
