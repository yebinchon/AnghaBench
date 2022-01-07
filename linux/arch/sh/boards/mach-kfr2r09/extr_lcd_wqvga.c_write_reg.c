
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_sys_bus_ops {int (* write_index ) (void*,unsigned long) ;int (* write_data ) (void*,unsigned long) ;} ;


 int stub1 (void*,unsigned long) ;
 int stub2 (void*,unsigned long) ;

__attribute__((used)) static void write_reg(void *sohandle,
        struct sh_mobile_lcdc_sys_bus_ops *so,
        int i, unsigned long v)
{
 if (i)
  so->write_data(sohandle, v);
 else
  so->write_index(sohandle, v);
}
