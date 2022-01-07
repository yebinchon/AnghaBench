
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __hbird_read_stick () ;
 int __hbird_write_stick (int ) ;
 int hbtick_disable_irq () ;
 int tick_disable_protection () ;

__attribute__((used)) static void hbtick_init_tick(void)
{
 tick_disable_protection();






 __hbird_write_stick(__hbird_read_stick());

 hbtick_disable_irq();
}
