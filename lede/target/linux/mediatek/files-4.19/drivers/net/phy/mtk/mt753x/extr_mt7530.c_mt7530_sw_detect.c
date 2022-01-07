
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsw_mt753x {int dummy; } ;
struct chip_rev {int rev; char* name; } ;


 int CHIP_NAME_M ;
 int CHIP_NAME_S ;
 int CHIP_REV ;
 int CHIP_REV_M ;
 int ENODEV ;
 int MT7530 ;
 int mt753x_reg_read (struct gsw_mt753x*,int ) ;

__attribute__((used)) static int mt7530_sw_detect(struct gsw_mt753x *gsw, struct chip_rev *crev)
{
 u32 rev;

 rev = mt753x_reg_read(gsw, CHIP_REV);

 if (((rev & CHIP_NAME_M) >> CHIP_NAME_S) == MT7530) {
  if (crev) {
   crev->rev = rev & CHIP_REV_M;
   crev->name = "MT7530";
  }

  return 0;
 }

 return -ENODEV;
}
