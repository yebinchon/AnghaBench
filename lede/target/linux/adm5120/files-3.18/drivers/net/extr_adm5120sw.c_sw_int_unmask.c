
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SWITCH_REG_INT_MASK ;
 int sw_read_reg (int ) ;
 int sw_write_reg (int ,int ) ;

__attribute__((used)) static inline void sw_int_unmask(u32 mask)
{
 u32 t;

 t = sw_read_reg(SWITCH_REG_INT_MASK);
 t &= ~mask;
 sw_write_reg(SWITCH_REG_INT_MASK, t);
}
