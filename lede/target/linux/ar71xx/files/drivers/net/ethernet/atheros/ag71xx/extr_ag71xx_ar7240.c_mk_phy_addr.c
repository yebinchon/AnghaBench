
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static inline u16 mk_phy_addr(u32 reg)
{
 return 0x17 & ((reg >> 4) | 0x10);
}
