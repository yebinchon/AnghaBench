
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int pic32_conf_base ;
 int readl (int) ;

__attribute__((used)) static u32 pic32_conf_get_reg_field(u32 offset, u32 rshift, u32 mask)
{
 u32 v;

 v = readl(pic32_conf_base + offset);
 v >>= rshift;
 v &= mask;

 return v;
}
