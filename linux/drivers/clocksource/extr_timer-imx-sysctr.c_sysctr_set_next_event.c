
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef unsigned long u32 ;
struct clock_event_device {int dummy; } ;


 scalar_t__ CMPCV_HI ;
 scalar_t__ CMPCV_LO ;
 scalar_t__ sys_ctr_base ;
 unsigned long sysctr_read_counter () ;
 int sysctr_timer_enable (int) ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static int sysctr_set_next_event(unsigned long delta,
     struct clock_event_device *evt)
{
 u32 cmp_hi, cmp_lo;
 u64 next;

 sysctr_timer_enable(0);

 next = sysctr_read_counter();

 next += delta;

 cmp_hi = (next >> 32) & 0x00fffff;
 cmp_lo = next & 0xffffffff;

 writel_relaxed(cmp_hi, sys_ctr_base + CMPCV_HI);
 writel_relaxed(cmp_lo, sys_ctr_base + CMPCV_LO);

 sysctr_timer_enable(1);

 return 0;
}
