
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FNCPY_ALIGN ;
 unsigned long IOMEM (unsigned long) ;
 unsigned long ROUND_DOWN (unsigned long,int ) ;
 unsigned long omap_sram_base ;
 unsigned long omap_sram_ceil ;
 unsigned long omap_sram_skip ;
 int pr_err (char*) ;

__attribute__((used)) static void *omap_sram_push_address(unsigned long size)
{
 unsigned long available, new_ceil = (unsigned long)omap_sram_ceil;

 available = omap_sram_ceil - (omap_sram_base + omap_sram_skip);

 if (size > available) {
  pr_err("Not enough space in SRAM\n");
  return ((void*)0);
 }

 new_ceil -= size;
 new_ceil = ROUND_DOWN(new_ceil, FNCPY_ALIGN);
 omap_sram_ceil = IOMEM(new_ceil);

 return (void *)omap_sram_ceil;
}
