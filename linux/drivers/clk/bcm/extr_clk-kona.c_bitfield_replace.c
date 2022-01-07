
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int bitfield_mask (int,int) ;

__attribute__((used)) static inline u32 bitfield_replace(u32 reg_val, u32 shift, u32 width, u32 val)
{
 u32 mask = bitfield_mask(shift, width);

 return (reg_val & ~mask) | (val << shift);
}
