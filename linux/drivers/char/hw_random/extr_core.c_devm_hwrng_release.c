
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrng {int dummy; } ;
struct device {int dummy; } ;


 int hwrng_unregister (struct hwrng*) ;

__attribute__((used)) static void devm_hwrng_release(struct device *dev, void *res)
{
 hwrng_unregister(*(struct hwrng **)res);
}
