
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int linesz; int ways; scalar_t__ waybit; } ;
struct cpuinfo_mips {TYPE_1__ scache; } ;


 unsigned int CONF_SC ;
 int Index_Load_Tag_SD ;
 int Index_Store_Tag_D ;
 int Index_Store_Tag_I ;
 int Index_Store_Tag_SD ;
 unsigned int R4K_CONF_SB ;
 int _stext ;
 int cache_op (int ,unsigned long) ;
 struct cpuinfo_mips current_cpu_data ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned int read_c0_config () ;
 int read_c0_taglo () ;
 unsigned long scache_size ;
 int write_c0_taghi (int ) ;
 int write_c0_taglo (int ) ;

__attribute__((used)) static int probe_scache(void)
{
 unsigned long flags, addr, begin, end, pow2;
 unsigned int config = read_c0_config();
 struct cpuinfo_mips *c = &current_cpu_data;

 if (config & CONF_SC)
  return 0;

 begin = (unsigned long) &_stext;
 begin &= ~((4 * 1024 * 1024) - 1);
 end = begin + (4 * 1024 * 1024);





 local_irq_save(flags);


 pow2 = (64 * 1024);
 for (addr = begin; addr < end; addr = (begin + pow2)) {
  unsigned long *p = (unsigned long *) addr;
  __asm__ __volatile__("nop" : : "r" (*p));
  pow2 <<= 1;
 }


 write_c0_taglo(0);
 write_c0_taghi(0);
 __asm__ __volatile__("nop; nop; nop; nop;");
 cache_op(Index_Store_Tag_I, begin);
 cache_op(Index_Store_Tag_D, begin);
 cache_op(Index_Store_Tag_SD, begin);


 pow2 = (128 * 1024);
 for (addr = begin + (128 * 1024); addr < end; addr = begin + pow2) {
  cache_op(Index_Load_Tag_SD, addr);
  __asm__ __volatile__("nop; nop; nop; nop;");
  if (!read_c0_taglo())
   break;
  pow2 <<= 1;
 }
 local_irq_restore(flags);
 addr -= begin;

 scache_size = addr;
 c->scache.linesz = 16 << ((config & R4K_CONF_SB) >> 22);
 c->scache.ways = 1;
 c->scache.waybit = 0;

 return 1;
}
