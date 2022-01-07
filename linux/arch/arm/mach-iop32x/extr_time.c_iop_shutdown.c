
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clock_event_device {int dummy; } ;


 int IOP_TMR_EN ;
 int read_tmr0 () ;
 int write_tmr0 (int ) ;

__attribute__((used)) static int iop_shutdown(struct clock_event_device *evt)
{
 u32 tmr = read_tmr0();

 tmr &= ~IOP_TMR_EN;
 write_tmr0(tmr);
 return 0;
}
