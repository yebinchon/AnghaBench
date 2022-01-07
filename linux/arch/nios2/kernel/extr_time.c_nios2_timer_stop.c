
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nios2_timer {int dummy; } ;


 int ALTERA_TIMER_CONTROL_REG ;
 int ALTERA_TIMER_CONTROL_STOP_MSK ;
 int timer_readw (struct nios2_timer*,int ) ;
 int timer_writew (struct nios2_timer*,int ,int ) ;

__attribute__((used)) static void nios2_timer_stop(struct nios2_timer *timer)
{
 u16 ctrl;

 ctrl = timer_readw(timer, ALTERA_TIMER_CONTROL_REG);
 ctrl |= ALTERA_TIMER_CONTROL_STOP_MSK;
 timer_writew(timer, ctrl, ALTERA_TIMER_CONTROL_REG);
}
