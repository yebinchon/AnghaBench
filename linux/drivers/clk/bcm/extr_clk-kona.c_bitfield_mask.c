
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 bitfield_mask(u32 shift, u32 width)
{
 return ((1 << width) - 1) << shift;
}
