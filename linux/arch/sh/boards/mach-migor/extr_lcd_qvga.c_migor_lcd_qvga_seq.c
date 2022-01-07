
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_sys_bus_ops {int dummy; } ;


 int write_reg16 (void*,struct sh_mobile_lcdc_sys_bus_ops*,unsigned short const,unsigned short const) ;

__attribute__((used)) static void migor_lcd_qvga_seq(void *sys_ops_handle,
          struct sh_mobile_lcdc_sys_bus_ops *sys_ops,
          unsigned short const *data, int no_data)
{
 int i;

 for (i = 0; i < no_data; i += 2)
  write_reg16(sys_ops_handle, sys_ops, data[i], data[i + 1]);
}
