
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int MCFPIT_PMR ;
 int TA (int ) ;
 int __raw_writew (unsigned long,int ) ;

__attribute__((used)) static int cf_pit_next_event(unsigned long delta,
  struct clock_event_device *evt)
{
 __raw_writew(delta, TA(MCFPIT_PMR));
 return 0;
}
