
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s16 ;


 int am33xx_prm_read_reg (int ,int ) ;
 int am33xx_prm_write_reg (int ,int ,int ) ;

__attribute__((used)) static u32 am33xx_prm_rmw_reg_bits(u32 mask, u32 bits, s16 inst, s16 idx)
{
 u32 v;

 v = am33xx_prm_read_reg(inst, idx);
 v &= ~mask;
 v |= bits;
 am33xx_prm_write_reg(v, inst, idx);

 return v;
}
