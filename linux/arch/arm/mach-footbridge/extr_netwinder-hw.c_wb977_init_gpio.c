
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GP1_IO_BASE ;
 int GP2_IO_BASE ;
 int GPIO_DONE ;
 int GPIO_FAN ;
 int GPIO_RED_LED ;
 int GPIO_WDTIMER ;
 int __gpio_modify_io (int,int) ;
 int current_gpio_io ;
 int nw_gpio_lock ;
 int nw_gpio_modify_op (int,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int wb977_device_enable () ;
 int wb977_device_select (int) ;
 int wb977_wb (int,int) ;
 int wb977_ww (int,int ) ;

__attribute__((used)) static inline void wb977_init_gpio(void)
{
 unsigned long flags;




 current_gpio_io = -1;
 __gpio_modify_io(-1, GPIO_DONE | GPIO_WDTIMER);

 wb977_device_select(7);




 wb977_ww(0x60, GP1_IO_BASE);
 wb977_ww(0x62, 0);
 wb977_ww(0x64, 0);




 wb977_wb(0x70, 10);
 wb977_wb(0x71, 0x02);




 wb977_wb(0xe0, 0x19);




 wb977_device_enable();

 wb977_device_select(8);




 wb977_ww(0x60, GP2_IO_BASE);





 wb977_wb(0xf2, 0x00);




 wb977_wb(0xf3, 0x00);




 wb977_wb(0xf4, 0x00);




 wb977_device_enable();




 raw_spin_lock_irqsave(&nw_gpio_lock, flags);
 nw_gpio_modify_op(-1, GPIO_RED_LED | GPIO_FAN);
 raw_spin_unlock_irqrestore(&nw_gpio_lock, flags);
}
