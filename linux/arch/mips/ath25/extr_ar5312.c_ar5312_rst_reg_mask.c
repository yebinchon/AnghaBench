
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ar5312_rst_reg_read (int ) ;
 int ar5312_rst_reg_write (int ,int ) ;

__attribute__((used)) static inline void ar5312_rst_reg_mask(u32 reg, u32 mask, u32 val)
{
 u32 ret = ar5312_rst_reg_read(reg);

 ret &= ~mask;
 ret |= val;
 ar5312_rst_reg_write(reg, ret);
}
