
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARC_REG_TIMER0_CNT ;
 int ARC_REG_TIMER0_CTRL ;
 int ARC_REG_TIMER0_LIMIT ;
 unsigned int TIMER_CTRL_IE ;
 unsigned int TIMER_CTRL_NH ;
 int write_aux_reg (int ,unsigned int) ;

__attribute__((used)) static void arc_timer_event_setup(unsigned int cycles)
{
 write_aux_reg(ARC_REG_TIMER0_LIMIT, cycles);
 write_aux_reg(ARC_REG_TIMER0_CNT, 0);

 write_aux_reg(ARC_REG_TIMER0_CTRL, TIMER_CTRL_IE | TIMER_CTRL_NH);
}
