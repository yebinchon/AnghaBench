
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long readl_relaxed (int ) ;
 int stm32_timer_cnt ;

__attribute__((used)) static unsigned long stm32_read_delay(void)
{
 return readl_relaxed(stm32_timer_cnt);
}
