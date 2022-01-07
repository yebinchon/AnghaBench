
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_sys_bus_ops {int (* write_index ) (void*,int ) ;} ;


 int adjust_reg18 (unsigned short) ;
 int stub1 (void*,int ) ;

__attribute__((used)) static void write_reg(void *sys_ops_handle,
         struct sh_mobile_lcdc_sys_bus_ops *sys_ops,
         unsigned short reg, unsigned short data)
{
 sys_ops->write_index(sys_ops_handle, adjust_reg18(reg << 8 | data));
}
