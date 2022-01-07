
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7620_gsw {int dummy; } ;


 int _mt7620_mii_write (struct mt7620_gsw*,int,int,int) ;

void mt7530_mdio_w32(struct mt7620_gsw *gsw, u32 reg, u32 val)
{
 _mt7620_mii_write(gsw, 0x1f, 0x1f, (reg >> 6) & 0x3ff);
 _mt7620_mii_write(gsw, 0x1f, (reg >> 2) & 0xf, val & 0xffff);
 _mt7620_mii_write(gsw, 0x1f, 0x10, val >> 16);
}
