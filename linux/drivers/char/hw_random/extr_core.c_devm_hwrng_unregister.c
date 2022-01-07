
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrng {int dummy; } ;
struct device {int dummy; } ;


 int devm_hwrng_match ;
 int devm_hwrng_release ;
 int devres_release (struct device*,int ,int ,struct hwrng*) ;

void devm_hwrng_unregister(struct device *dev, struct hwrng *rng)
{
 devres_release(dev, devm_hwrng_release, devm_hwrng_match, rng);
}
