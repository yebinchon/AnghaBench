
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clock_event_device {int dummy; } ;


 int IOP_TMR_EN ;
 int IOP_TMR_RELOAD ;
 int read_tmr0 () ;
 scalar_t__ ticks_per_jiffy ;
 int write_tcr0 (scalar_t__) ;
 int write_tmr0 (int) ;
 int write_trr0 (scalar_t__) ;

__attribute__((used)) static int iop_set_periodic(struct clock_event_device *evt)
{
 u32 tmr = read_tmr0();

 write_tmr0(tmr & ~IOP_TMR_EN);
 write_tcr0(ticks_per_jiffy - 1);
 write_trr0(ticks_per_jiffy - 1);
 tmr |= (IOP_TMR_RELOAD | IOP_TMR_EN);

 write_tmr0(tmr);
 return 0;
}
