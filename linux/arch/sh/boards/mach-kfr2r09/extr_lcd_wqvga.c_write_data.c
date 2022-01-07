
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_sys_bus_ops {int dummy; } ;


 int write_reg (void*,struct sh_mobile_lcdc_sys_bus_ops*,int,unsigned char const) ;

__attribute__((used)) static void write_data(void *sohandle,
         struct sh_mobile_lcdc_sys_bus_ops *so,
         unsigned char const *data, int no_data)
{
 int i;

 for (i = 0; i < no_data; i++)
  write_reg(sohandle, so, 1, data[i]);
}
