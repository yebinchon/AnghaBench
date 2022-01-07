
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clock_board {scalar_t__ clock_ver_reg; scalar_t__ clock_regs; } ;


 scalar_t__ CLOCK_STAT1 ;
 int upa_readb (scalar_t__) ;

__attribute__((used)) static int clock_board_calc_nslots(struct clock_board *p)
{
 u8 reg = upa_readb(p->clock_regs + CLOCK_STAT1) & 0xc0;

 switch (reg) {
 case 0x40:
  return 16;

 case 0xc0:
  return 8;

 case 0x80:
  reg = 0;
  if (p->clock_ver_reg)
   reg = upa_readb(p->clock_ver_reg);
  if (reg) {
   if (reg & 0x80)
    return 4;
   else
    return 5;
  }

 default:
  return 4;
 }
}
