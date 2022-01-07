
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Index_Load_Tag_T ;
 int Index_Store_Tag_T ;
 int RM7K_CONF_TE ;
 int _stext ;
 int cache_op (int ,unsigned long) ;
 int clear_c0_config (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int read_c0_taglo () ;
 int set_c0_config (int ) ;
 unsigned long tcache_size ;
 int write_c0_taghi (int ) ;
 int write_c0_taglo (int ) ;

__attribute__((used)) static void __probe_tcache(void)
{
 unsigned long flags, addr, begin, end, pow2;

 begin = (unsigned long) &_stext;
 begin &= ~((8 * 1024 * 1024) - 1);
 end = begin + (8 * 1024 * 1024);

 local_irq_save(flags);

 set_c0_config(RM7K_CONF_TE);


 pow2 = (256 * 1024);
 for (addr = begin; addr <= end; addr = (begin + pow2)) {
  unsigned long *p = (unsigned long *) addr;
  __asm__ __volatile__("nop" : : "r" (*p));
  pow2 <<= 1;
 }


 write_c0_taglo(0);
 write_c0_taghi(0);
 cache_op(Index_Store_Tag_T, begin);


 pow2 = (512 * 1024);
 for (addr = begin + (512 * 1024); addr <= end; addr = begin + pow2) {
  cache_op(Index_Load_Tag_T, addr);
  if (!read_c0_taglo())
   break;
  pow2 <<= 1;
 }

 addr -= begin;
 tcache_size = addr;

 clear_c0_config(RM7K_CONF_TE);

 local_irq_restore(flags);
}
