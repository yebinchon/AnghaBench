
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache_info {int ways; unsigned long way_incr; } ;
struct TYPE_2__ {struct cache_info dcache; } ;


 unsigned long PAGE_SIZE ;
 TYPE_1__ boot_cpu_data ;

__attribute__((used)) static void __flush_cache_one(unsigned long addr, unsigned long phys,
          unsigned long exec_offset)
{
 int way_count;
 unsigned long base_addr = addr;
 struct cache_info *dcache;
 unsigned long way_incr;
 unsigned long a, ea, p;
 unsigned long temp_pc;

 dcache = &boot_cpu_data.dcache;

 way_count = dcache->ways;
 way_incr = dcache->way_incr;
 asm volatile("mov.l 1f, %0\n\t"
       "add   %1, %0\n\t"
       "jmp   @%0\n\t"
       "nop\n\t"
       ".balign 4\n\t"
       "1:  .long 2f\n\t"
       "2:\n" : "=&r" (temp_pc) : "r" (exec_offset));





 do {
  ea = base_addr + PAGE_SIZE;
  a = base_addr;
  p = phys;

  do {
   *(volatile unsigned long *)a = p;





   *(volatile unsigned long *)(a+32) = p;
   a += 64;
   p += 64;
  } while (a < ea);

  base_addr += way_incr;
 } while (--way_count != 0);
}
