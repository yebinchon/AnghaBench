
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_sys_bus_ops {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int clear_memory (void*,struct sh_mobile_lcdc_sys_bus_ops*) ;
 int data_frame_if ;
 int data_gamma ;
 int data_panel ;
 int data_power ;
 int data_timing ;
 int data_timing_src ;
 int mdelay (int) ;
 int write_data (void*,struct sh_mobile_lcdc_sys_bus_ops*,int ,int ) ;
 int write_memory_start (void*,struct sh_mobile_lcdc_sys_bus_ops*) ;
 int write_reg (void*,struct sh_mobile_lcdc_sys_bus_ops*,int,int) ;

__attribute__((used)) static void display_on(void *sohandle,
         struct sh_mobile_lcdc_sys_bus_ops *so)
{

 write_reg(sohandle, so, 0, 0xb0);
 write_reg(sohandle, so, 1, 0x00);


 write_reg(sohandle, so, 0, 0xb1);
 write_reg(sohandle, so, 1, 0x00);


 write_reg(sohandle, so, 0, 0xb3);
 write_data(sohandle, so, data_frame_if, ARRAY_SIZE(data_frame_if));


 write_reg(sohandle, so, 0, 0xb4);
 write_reg(sohandle, so, 1, 0x00);


 write_reg(sohandle, so, 0, 0xc0);
 write_data(sohandle, so, data_panel, ARRAY_SIZE(data_panel));


 write_reg(sohandle, so, 0, 0xc1);
 write_data(sohandle, so, data_timing, ARRAY_SIZE(data_timing));


 write_reg(sohandle, so, 0, 0xc2);
 write_data(sohandle, so, data_timing, ARRAY_SIZE(data_timing));


 write_reg(sohandle, so, 0, 0xc3);
 write_data(sohandle, so, data_timing, ARRAY_SIZE(data_timing));


 write_reg(sohandle, so, 0, 0xc4);
 write_data(sohandle, so, data_timing_src, ARRAY_SIZE(data_timing_src));


 write_reg(sohandle, so, 0, 0xc8);
 write_data(sohandle, so, data_gamma, ARRAY_SIZE(data_gamma));


 write_reg(sohandle, so, 0, 0xc9);
 write_data(sohandle, so, data_gamma, ARRAY_SIZE(data_gamma));


 write_reg(sohandle, so, 0, 0xca);
 write_data(sohandle, so, data_gamma, ARRAY_SIZE(data_gamma));


 write_reg(sohandle, so, 0, 0xd0);
 write_data(sohandle, so, data_power, ARRAY_SIZE(data_power));


 write_reg(sohandle, so, 0, 0xd1);
 write_reg(sohandle, so, 1, 0x00);
 write_reg(sohandle, so, 1, 0x0f);
 write_reg(sohandle, so, 1, 0x02);


 write_reg(sohandle, so, 0, 0xd2);
 write_reg(sohandle, so, 1, 0x63);
 write_reg(sohandle, so, 1, 0x24);


 write_reg(sohandle, so, 0, 0xd3);
 write_reg(sohandle, so, 1, 0x63);
 write_reg(sohandle, so, 1, 0x24);


 write_reg(sohandle, so, 0, 0xd4);
 write_reg(sohandle, so, 1, 0x63);
 write_reg(sohandle, so, 1, 0x24);

 write_reg(sohandle, so, 0, 0xd8);
 write_reg(sohandle, so, 1, 0x77);
 write_reg(sohandle, so, 1, 0x77);


 write_reg(sohandle, so, 0, 0x35);
 write_reg(sohandle, so, 1, 0x00);


 write_reg(sohandle, so, 0, 0x44);
 write_reg(sohandle, so, 1, 0x00);
 write_reg(sohandle, so, 1, 0x00);


 write_reg(sohandle, so, 0, 0x2a);
 write_reg(sohandle, so, 1, 0x00);
 write_reg(sohandle, so, 1, 0x00);
 write_reg(sohandle, so, 1, 0x00);
 write_reg(sohandle, so, 1, 0xef);


 write_reg(sohandle, so, 0, 0x2b);
 write_reg(sohandle, so, 1, 0x00);
 write_reg(sohandle, so, 1, 0x00);
 write_reg(sohandle, so, 1, 0x01);
 write_reg(sohandle, so, 1, 0x8f);


 write_reg(sohandle, so, 0, 0x11);

 mdelay(120);


 clear_memory(sohandle, so);


 write_reg(sohandle, so, 0, 0x29);
 mdelay(1);

 write_memory_start(sohandle, so);
}
