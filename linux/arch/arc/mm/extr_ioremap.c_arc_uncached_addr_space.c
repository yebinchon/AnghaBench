
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phys_addr_t ;


 scalar_t__ ARC_UNCACHED_ADDR_SPACE ;
 scalar_t__ is_isa_arcompact () ;
 scalar_t__ perip_base ;
 scalar_t__ perip_end ;

__attribute__((used)) static inline bool arc_uncached_addr_space(phys_addr_t paddr)
{
 if (is_isa_arcompact()) {
  if (paddr >= ARC_UNCACHED_ADDR_SPACE)
   return 1;
 } else if (paddr >= perip_base && paddr <= perip_end) {
  return 1;
 }

 return 0;
}
