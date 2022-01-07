
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcs_bmc {int channel; } ;
struct aspeed_kcs_bmc {int map; } ;


 int LPC_HICR0 ;
 int LPC_HICR0_LPC1E ;
 int LPC_HICR0_LPC2E ;
 int LPC_HICR0_LPC3E ;
 int LPC_HICR2 ;
 int LPC_HICR2_IBFIF1 ;
 int LPC_HICR2_IBFIF2 ;
 int LPC_HICR2_IBFIF3 ;
 int LPC_HICR4 ;
 int LPC_HICR4_KCSENBL ;
 int LPC_HICRB ;
 int LPC_HICRB_IBFIF4 ;
 int LPC_HICRB_LPC4E ;
 struct aspeed_kcs_bmc* kcs_bmc_priv (struct kcs_bmc*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void aspeed_kcs_enable_channel(struct kcs_bmc *kcs_bmc, bool enable)
{
 struct aspeed_kcs_bmc *priv = kcs_bmc_priv(kcs_bmc);

 switch (kcs_bmc->channel) {
 case 1:
  if (enable) {
   regmap_update_bits(priv->map, LPC_HICR2,
     LPC_HICR2_IBFIF1, LPC_HICR2_IBFIF1);
   regmap_update_bits(priv->map, LPC_HICR0,
     LPC_HICR0_LPC1E, LPC_HICR0_LPC1E);
  } else {
   regmap_update_bits(priv->map, LPC_HICR0,
     LPC_HICR0_LPC1E, 0);
   regmap_update_bits(priv->map, LPC_HICR2,
     LPC_HICR2_IBFIF1, 0);
  }
  break;

 case 2:
  if (enable) {
   regmap_update_bits(priv->map, LPC_HICR2,
     LPC_HICR2_IBFIF2, LPC_HICR2_IBFIF2);
   regmap_update_bits(priv->map, LPC_HICR0,
     LPC_HICR0_LPC2E, LPC_HICR0_LPC2E);
  } else {
   regmap_update_bits(priv->map, LPC_HICR0,
     LPC_HICR0_LPC2E, 0);
   regmap_update_bits(priv->map, LPC_HICR2,
     LPC_HICR2_IBFIF2, 0);
  }
  break;

 case 3:
  if (enable) {
   regmap_update_bits(priv->map, LPC_HICR2,
     LPC_HICR2_IBFIF3, LPC_HICR2_IBFIF3);
   regmap_update_bits(priv->map, LPC_HICR0,
     LPC_HICR0_LPC3E, LPC_HICR0_LPC3E);
   regmap_update_bits(priv->map, LPC_HICR4,
     LPC_HICR4_KCSENBL, LPC_HICR4_KCSENBL);
  } else {
   regmap_update_bits(priv->map, LPC_HICR0,
     LPC_HICR0_LPC3E, 0);
   regmap_update_bits(priv->map, LPC_HICR4,
     LPC_HICR4_KCSENBL, 0);
   regmap_update_bits(priv->map, LPC_HICR2,
     LPC_HICR2_IBFIF3, 0);
  }
  break;

 case 4:
  if (enable)
   regmap_update_bits(priv->map, LPC_HICRB,
     LPC_HICRB_IBFIF4 | LPC_HICRB_LPC4E,
     LPC_HICRB_IBFIF4 | LPC_HICRB_LPC4E);
  else
   regmap_update_bits(priv->map, LPC_HICRB,
     LPC_HICRB_IBFIF4 | LPC_HICRB_LPC4E,
     0);
  break;

 default:
  break;
 }
}
