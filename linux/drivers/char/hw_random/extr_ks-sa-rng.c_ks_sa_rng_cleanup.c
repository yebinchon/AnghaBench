
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ks_sa_rng {int regmap_cfg; TYPE_1__* reg_rng; } ;
struct hwrng {scalar_t__ priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int control; } ;


 int SA_CMD_STATUS_OFS ;
 int SA_CMD_STATUS_REG_TRNG_ENABLE ;
 struct ks_sa_rng* dev_get_drvdata (struct device*) ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 int writel (int ,int *) ;

__attribute__((used)) static void ks_sa_rng_cleanup(struct hwrng *rng)
{
 struct device *dev = (struct device *)rng->priv;
 struct ks_sa_rng *ks_sa_rng = dev_get_drvdata(dev);


 writel(0, &ks_sa_rng->reg_rng->control);
 regmap_write_bits(ks_sa_rng->regmap_cfg, SA_CMD_STATUS_OFS,
     SA_CMD_STATUS_REG_TRNG_ENABLE, 0);
}
