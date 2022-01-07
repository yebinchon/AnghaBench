
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrng {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_hwrng_release ;
 int devres_add (struct device*,struct hwrng**) ;
 struct hwrng** devres_alloc (int ,int,int ) ;
 int devres_free (struct hwrng**) ;
 int hwrng_register (struct hwrng*) ;

int devm_hwrng_register(struct device *dev, struct hwrng *rng)
{
 struct hwrng **ptr;
 int error;

 ptr = devres_alloc(devm_hwrng_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return -ENOMEM;

 error = hwrng_register(rng);
 if (error) {
  devres_free(ptr);
  return error;
 }

 *ptr = rng;
 devres_add(dev, ptr);
 return 0;
}
