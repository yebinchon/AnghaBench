
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tick_disable_irq () ;
 int tick_disable_protection () ;

__attribute__((used)) static void tick_init_tick(void)
{
 tick_disable_protection();
 tick_disable_irq();
}
