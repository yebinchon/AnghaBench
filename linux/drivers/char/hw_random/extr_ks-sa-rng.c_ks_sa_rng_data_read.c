
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ks_sa_rng {TYPE_1__* reg_rng; } ;
struct hwrng {scalar_t__ priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int intack; int output_h; int output_l; } ;


 int TRNG_INTACK_REG_READY ;
 struct ks_sa_rng* dev_get_drvdata (struct device*) ;
 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static int ks_sa_rng_data_read(struct hwrng *rng, u32 *data)
{
 struct device *dev = (struct device *)rng->priv;
 struct ks_sa_rng *ks_sa_rng = dev_get_drvdata(dev);


 data[0] = readl(&ks_sa_rng->reg_rng->output_l);
 data[1] = readl(&ks_sa_rng->reg_rng->output_h);

 writel(TRNG_INTACK_REG_READY, &ks_sa_rng->reg_rng->intack);

 return sizeof(u32) * 2;
}
