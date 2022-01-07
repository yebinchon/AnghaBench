
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topa {int dummy; } ;
typedef int phys_addr_t ;


 int PFN_DOWN (int ) ;
 int topa_to_page (struct topa*) ;
 int virt_to_phys (int ) ;

__attribute__((used)) static inline phys_addr_t topa_pfn(struct topa *topa)
{
 return PFN_DOWN(virt_to_phys(topa_to_page(topa)));
}
