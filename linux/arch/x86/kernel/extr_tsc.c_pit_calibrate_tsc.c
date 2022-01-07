
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef int u32 ;


 unsigned long ULONG_MAX ;
 int USEC_PER_MSEC ;
 int do_div (unsigned long,unsigned long) ;
 unsigned long get_cycles () ;
 int has_legacy_pic () ;
 int inb (int) ;
 int outb (int,int) ;
 int udelay (int) ;

__attribute__((used)) static unsigned long pit_calibrate_tsc(u32 latch, unsigned long ms, int loopmin)
{
 u64 tsc, t1, t2, delta;
 unsigned long tscmin, tscmax;
 int pitcnt;

 if (!has_legacy_pic()) {





  udelay(10 * USEC_PER_MSEC);
  udelay(10 * USEC_PER_MSEC);
  udelay(10 * USEC_PER_MSEC);
  udelay(10 * USEC_PER_MSEC);
  udelay(10 * USEC_PER_MSEC);
  return ULONG_MAX;
 }


 outb((inb(0x61) & ~0x02) | 0x01, 0x61);






 outb(0xb0, 0x43);
 outb(latch & 0xff, 0x42);
 outb(latch >> 8, 0x42);

 tsc = t1 = t2 = get_cycles();

 pitcnt = 0;
 tscmax = 0;
 tscmin = ULONG_MAX;
 while ((inb(0x61) & 0x20) == 0) {
  t2 = get_cycles();
  delta = t2 - tsc;
  tsc = t2;
  if ((unsigned long) delta < tscmin)
   tscmin = (unsigned int) delta;
  if ((unsigned long) delta > tscmax)
   tscmax = (unsigned int) delta;
  pitcnt++;
 }
 if (pitcnt < loopmin || tscmax > 10 * tscmin)
  return ULONG_MAX;


 delta = t2 - t1;
 do_div(delta, ms);
 return delta;
}
