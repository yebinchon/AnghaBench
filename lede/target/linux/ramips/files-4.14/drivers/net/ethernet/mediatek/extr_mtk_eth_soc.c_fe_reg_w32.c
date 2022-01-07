
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum fe_reg { ____Placeholder_fe_reg } fe_reg ;


 int * fe_reg_table ;
 int fe_w32 (int ,int ) ;

void fe_reg_w32(u32 val, enum fe_reg reg)
{
 fe_w32(val, fe_reg_table[reg]);
}
