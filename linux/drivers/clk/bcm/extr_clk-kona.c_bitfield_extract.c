
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int bitfield_mask (int,int) ;

__attribute__((used)) static inline u32 bitfield_extract(u32 reg_val, u32 shift, u32 width)
{
 return (reg_val & bitfield_mask(shift, width)) >> shift;
}
