
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u16 ;
struct nios2_timer {int dummy; } ;


 unsigned long ALTERA_TIMER_CONTROL_CONT_MSK ;
 unsigned long ALTERA_TIMER_CONTROL_ITO_MSK ;
 int ALTERA_TIMER_CONTROL_REG ;
 unsigned long ALTERA_TIMER_CONTROL_START_MSK ;
 unsigned long ALTERA_TIMER_CONTROL_STOP_MSK ;
 int ALTERA_TIMER_PERIODH_REG ;
 int ALTERA_TIMER_PERIODL_REG ;
 unsigned long timer_readw (struct nios2_timer*,int ) ;
 int timer_writew (struct nios2_timer*,unsigned long,int ) ;

__attribute__((used)) static void nios2_timer_config(struct nios2_timer *timer, unsigned long period,
          bool periodic)
{
 u16 ctrl;



  period--;

 ctrl = timer_readw(timer, ALTERA_TIMER_CONTROL_REG);

 timer_writew(timer, ctrl | ALTERA_TIMER_CONTROL_STOP_MSK,
  ALTERA_TIMER_CONTROL_REG);


 timer_writew(timer, period, ALTERA_TIMER_PERIODL_REG);
 timer_writew(timer, period >> 16, ALTERA_TIMER_PERIODH_REG);

 ctrl |= ALTERA_TIMER_CONTROL_START_MSK | ALTERA_TIMER_CONTROL_ITO_MSK;
 if (periodic)
  ctrl |= ALTERA_TIMER_CONTROL_CONT_MSK;
 else
  ctrl &= ~ALTERA_TIMER_CONTROL_CONT_MSK;
 timer_writew(timer, ctrl, ALTERA_TIMER_CONTROL_REG);
}
