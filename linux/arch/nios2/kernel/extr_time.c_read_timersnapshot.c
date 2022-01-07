
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nios2_timer {int dummy; } ;


 int ALTERA_TIMER_SNAPH_REG ;
 int ALTERA_TIMER_SNAPL_REG ;
 int timer_readw (struct nios2_timer*,int ) ;
 int timer_writew (struct nios2_timer*,int ,int ) ;

__attribute__((used)) static inline unsigned long read_timersnapshot(struct nios2_timer *timer)
{
 unsigned long count;

 timer_writew(timer, 0, ALTERA_TIMER_SNAPL_REG);
 count = timer_readw(timer, ALTERA_TIMER_SNAPH_REG) << 16 |
  timer_readw(timer, ALTERA_TIMER_SNAPL_REG);

 return count;
}
