
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int MCFPIT_PCSR ;
 int MCFPIT_PCSR_CLK64 ;
 int MCFPIT_PCSR_DISABLE ;
 int MCFPIT_PCSR_EN ;
 int MCFPIT_PCSR_OVW ;
 int MCFPIT_PCSR_PIE ;
 int TA (int ) ;
 int __raw_writew (int,int ) ;

__attribute__((used)) static int cf_pit_set_oneshot(struct clock_event_device *evt)
{
 __raw_writew(MCFPIT_PCSR_DISABLE, TA(MCFPIT_PCSR));
 __raw_writew(MCFPIT_PCSR_EN | MCFPIT_PCSR_PIE |
       MCFPIT_PCSR_OVW | MCFPIT_PCSR_CLK64, TA(MCFPIT_PCSR));
 return 0;
}
