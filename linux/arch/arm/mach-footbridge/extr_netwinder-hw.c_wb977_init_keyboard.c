
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wb977_device_enable () ;
 int wb977_device_select (int) ;
 int wb977_wb (int,int) ;
 int wb977_ww (int,int) ;

__attribute__((used)) static inline void wb977_init_keyboard(void)
{
 wb977_device_select(5);




 wb977_ww(0x60, 0x0060);
 wb977_ww(0x62, 0x0064);




 wb977_wb(0x70, 1);
 wb977_wb(0x71, 0x02);




 wb977_wb(0x72, 5);
 wb977_wb(0x73, 0x02);




 wb977_wb(0xf0, 0x40);




 wb977_device_enable();
}
