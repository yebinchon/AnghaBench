
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_sys_bus_ops {int dummy; } ;


 int write_memory_start (void*,struct sh_mobile_lcdc_sys_bus_ops*) ;
 int write_reg (void*,struct sh_mobile_lcdc_sys_bus_ops*,int,int) ;

__attribute__((used)) static void clear_memory(void *sohandle,
    struct sh_mobile_lcdc_sys_bus_ops *so)
{
 int i;


 write_memory_start(sohandle, so);


 for (i = 0; i < (240 * 400); i++)
  write_reg(sohandle, so, 1, 0x00);
}
