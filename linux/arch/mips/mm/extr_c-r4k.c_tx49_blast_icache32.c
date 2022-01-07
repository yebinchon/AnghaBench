
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long waysize; unsigned long waybit; unsigned long ways; } ;
struct TYPE_4__ {TYPE_1__ icache; } ;


 int CACHE32_UNROLL32_ALIGN ;
 int CACHE32_UNROLL32_ALIGN2 ;
 unsigned long INDEX_BASE ;
 int Index_Invalidate_I ;
 int cache32_unroll32 (unsigned long,int ) ;
 TYPE_2__ current_cpu_data ;

__attribute__((used)) static inline void tx49_blast_icache32(void)
{
 unsigned long start = INDEX_BASE;
 unsigned long end = start + current_cpu_data.icache.waysize;
 unsigned long ws_inc = 1UL << current_cpu_data.icache.waybit;
 unsigned long ws_end = current_cpu_data.icache.ways <<
          current_cpu_data.icache.waybit;
 unsigned long ws, addr;

 CACHE32_UNROLL32_ALIGN2;

 for (ws = 0; ws < ws_end; ws += ws_inc)
  for (addr = start + 0x400; addr < end; addr += 0x400 * 2)
   cache32_unroll32(addr|ws, Index_Invalidate_I);
 CACHE32_UNROLL32_ALIGN;

 for (ws = 0; ws < ws_end; ws += ws_inc)
  for (addr = start; addr < end; addr += 0x400 * 2)
   cache32_unroll32(addr|ws, Index_Invalidate_I);
}
