
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINESIZE ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned long spanlines (unsigned long,unsigned long) ;

void hexagon_clean_dcache_range(unsigned long start, unsigned long end)
{
 unsigned long lines = spanlines(start, end-1);
 unsigned long i, flags;

 start &= ~(LINESIZE - 1);

 local_irq_save(flags);

 for (i = 0; i < lines; i++) {
  __asm__ __volatile__ (
  "	dccleana(%0);	"
  :
  : "r" (start)
  );
  start += LINESIZE;
 }
 local_irq_restore(flags);
}
