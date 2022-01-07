
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapped_io {int num_resources; struct resource* resource; scalar_t__ virt_base; } ;
struct resource {unsigned long start; } ;


 int PAGE_SIZE ;
 int resource_size (struct resource*) ;
 unsigned long roundup (int ,int ) ;

__attribute__((used)) static unsigned long lookup_address(struct trapped_io *tiop,
        unsigned long address)
{
 struct resource *res;
 unsigned long vaddr = (unsigned long)tiop->virt_base;
 unsigned long len;
 int k;

 for (k = 0; k < tiop->num_resources; k++) {
  res = tiop->resource + k;
  len = roundup(resource_size(res), PAGE_SIZE);
  if (address < (vaddr + len))
   return res->start + (address - vaddr);
  vaddr += len;
 }
 return 0;
}
