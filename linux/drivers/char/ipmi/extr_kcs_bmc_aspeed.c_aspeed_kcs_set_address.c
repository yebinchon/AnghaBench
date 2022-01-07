
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct kcs_bmc {int channel; } ;
struct aspeed_kcs_bmc {int map; } ;


 int LPC_HICR4 ;
 int LPC_HICR4_LADR12AS ;
 int LPC_LADR12H ;
 int LPC_LADR12L ;
 int LPC_LADR3H ;
 int LPC_LADR3L ;
 int LPC_LADR4 ;
 struct aspeed_kcs_bmc* kcs_bmc_priv (struct kcs_bmc*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void aspeed_kcs_set_address(struct kcs_bmc *kcs_bmc, u16 addr)
{
 struct aspeed_kcs_bmc *priv = kcs_bmc_priv(kcs_bmc);

 switch (kcs_bmc->channel) {
 case 1:
  regmap_update_bits(priv->map, LPC_HICR4,
    LPC_HICR4_LADR12AS, 0);
  regmap_write(priv->map, LPC_LADR12H, addr >> 8);
  regmap_write(priv->map, LPC_LADR12L, addr & 0xFF);
  break;

 case 2:
  regmap_update_bits(priv->map, LPC_HICR4,
    LPC_HICR4_LADR12AS, LPC_HICR4_LADR12AS);
  regmap_write(priv->map, LPC_LADR12H, addr >> 8);
  regmap_write(priv->map, LPC_LADR12L, addr & 0xFF);
  break;

 case 3:
  regmap_write(priv->map, LPC_LADR3H, addr >> 8);
  regmap_write(priv->map, LPC_LADR3L, addr & 0xFF);
  break;

 case 4:
  regmap_write(priv->map, LPC_LADR4, ((addr + 1) << 16) |
   addr);
  break;

 default:
  break;
 }
}
