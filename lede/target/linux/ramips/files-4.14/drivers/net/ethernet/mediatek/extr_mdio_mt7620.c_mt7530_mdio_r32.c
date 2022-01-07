
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mt7620_gsw {int dummy; } ;


 int _mt7620_mii_read (struct mt7620_gsw*,int,int) ;
 int _mt7620_mii_write (struct mt7620_gsw*,int,int,int) ;

u32 mt7530_mdio_r32(struct mt7620_gsw *gsw, u32 reg)
{
 u16 high, low;

 _mt7620_mii_write(gsw, 0x1f, 0x1f, (reg >> 6) & 0x3ff);
 low = _mt7620_mii_read(gsw, 0x1f, (reg >> 2) & 0xf);
 high = _mt7620_mii_read(gsw, 0x1f, 0x10);

 return (high << 16) | (low & 0xffff);
}
