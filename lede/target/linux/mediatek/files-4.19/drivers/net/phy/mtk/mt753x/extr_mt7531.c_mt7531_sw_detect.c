
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
 int MT7531 ;
 int PAD_DUAL_SGMII_EN ;
 int TOP_SIG_SR ;
 int mt753x_reg_read (struct gsw_mt753x*,int ) ;

__attribute__((used)) static int mt7531_sw_detect(struct gsw_mt753x *gsw, struct chip_rev *crev)
{
 u32 rev, topsig;

 rev = mt753x_reg_read(gsw, CHIP_REV);

 if (((rev & CHIP_NAME_M) >> CHIP_NAME_S) == MT7531) {
  if (crev) {
   topsig = mt753x_reg_read(gsw, TOP_SIG_SR);

   crev->rev = rev & CHIP_REV_M;
   crev->name = topsig & PAD_DUAL_SGMII_EN ?
         "MT7531AE" : "MT7531BE";
  }

  return 0;
 }

 return -ENODEV;
}
