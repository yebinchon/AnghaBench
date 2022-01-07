
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int s16 ;


 int __ffs (int) ;
 int am33xx_cm_read_reg (int ,int ) ;

__attribute__((used)) static inline u32 am33xx_cm_read_reg_bits(u16 inst, s16 idx, u32 mask)
{
 u32 v;

 v = am33xx_cm_read_reg(inst, idx);
 v &= mask;
 v >>= __ffs(mask);

 return v;
}
