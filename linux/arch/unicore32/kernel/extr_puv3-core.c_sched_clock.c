
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OST_OSCR ;
 unsigned long long cnt32_to_63 (int ) ;
 int readl (int ) ;

unsigned long long sched_clock(void)
{
 unsigned long long v = cnt32_to_63(readl(OST_OSCR));





 v = ((v & 0x7fffffffffffffffULL) * 2235) >> 5;

 return v;
}
