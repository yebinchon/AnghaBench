
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ks_sa_rng {TYPE_1__* reg_rng; } ;
struct hwrng {scalar_t__ priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int status; } ;


 int SA_MAX_RNG_DATA_RETRIES ;
 int SA_RNG_DATA_RETRY_DELAY ;
 int TRNG_STATUS_REG_READY ;
 struct ks_sa_rng* dev_get_drvdata (struct device*) ;
 int readl (int *) ;
 int udelay (int ) ;

__attribute__((used)) static int ks_sa_rng_data_present(struct hwrng *rng, int wait)
{
 struct device *dev = (struct device *)rng->priv;
 struct ks_sa_rng *ks_sa_rng = dev_get_drvdata(dev);

 u32 ready;
 int j;

 for (j = 0; j < SA_MAX_RNG_DATA_RETRIES; j++) {
  ready = readl(&ks_sa_rng->reg_rng->status);
  ready &= TRNG_STATUS_REG_READY;

  if (ready || !wait)
   break;

  udelay(SA_RNG_DATA_RETRY_DELAY);
 }

 return ready;
}
