
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SWITCH_REG_TIMER ;
 int SWITCH_REG_TIMER_INT ;
 int SW_READ_REG (int ) ;
 int SW_WRITE_REG (int ,int) ;
 int TIMER_INT_TOM ;
 int TIMER_INT_TOS ;
 int TIMER_PERIOD_DEFAULT ;
 int TIMER_PERIOD_MASK ;
 int TIMER_TE ;

void adm5120_ndelay(u32 ns)
{
 u32 t;

 SW_WRITE_REG(SWITCH_REG_TIMER, TIMER_PERIOD_DEFAULT);
 SW_WRITE_REG(SWITCH_REG_TIMER_INT, (TIMER_INT_TOS | TIMER_INT_TOM));

 t = (ns+640) / 640;
 t &= TIMER_PERIOD_MASK;
 SW_WRITE_REG(SWITCH_REG_TIMER, t | TIMER_TE);


 do {
  t = SW_READ_REG(SWITCH_REG_TIMER_INT);
 } while ((t & TIMER_INT_TOS) == 0);


 SW_WRITE_REG(SWITCH_REG_TIMER, TIMER_PERIOD_DEFAULT);
 SW_WRITE_REG(SWITCH_REG_TIMER_INT, (TIMER_INT_TOS | TIMER_INT_TOM));
}
