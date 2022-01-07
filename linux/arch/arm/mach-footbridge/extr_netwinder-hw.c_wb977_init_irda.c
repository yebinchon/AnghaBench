
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRDA_IO_BASE ;
 int wb977_device_enable () ;
 int wb977_device_select (int) ;
 int wb977_wb (int,int) ;
 int wb977_ww (int,int ) ;

__attribute__((used)) static inline void wb977_init_irda(void)
{
 wb977_device_select(6);




 wb977_ww(0x60, IRDA_IO_BASE);




 wb977_wb(0x70, 6);
 wb977_wb(0x71, 0x02);




 wb977_wb(0x74, 0x00);




 wb977_wb(0x75, 0x04);




 wb977_wb(0xf0, 0x03);




 wb977_device_enable();
}
