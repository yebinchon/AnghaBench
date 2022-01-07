
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int icache_line_size; unsigned long icache_size; } ;


 TYPE_1__ cpuinfo ;

__attribute__((used)) static void __flush_icache(unsigned long start, unsigned long end)
{
 unsigned long addr;

 start &= ~(cpuinfo.icache_line_size - 1);
 end += (cpuinfo.icache_line_size - 1);
 end &= ~(cpuinfo.icache_line_size - 1);

 if (end > start + cpuinfo.icache_size)
  end = start + cpuinfo.icache_size;

 for (addr = start; addr < end; addr += cpuinfo.icache_line_size) {
  __asm__ __volatile__ ("   flushi %0\n"
     :
     : "r"(addr)
                       );
 }
 __asm__ __volatile(" flushp\n");
}
