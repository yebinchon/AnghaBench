
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dcache_line_size; } ;


 TYPE_1__ cpuinfo ;

__attribute__((used)) static void __invalidate_dcache(unsigned long start, unsigned long end)
{
 unsigned long addr;

 start &= ~(cpuinfo.dcache_line_size - 1);
 end += (cpuinfo.dcache_line_size - 1);
 end &= ~(cpuinfo.dcache_line_size - 1);

 for (addr = start; addr < end; addr += cpuinfo.dcache_line_size) {
  __asm__ __volatile__ ("   initda 0(%0)\n"
     :
     : "r"(addr)
                       );
 }
}
