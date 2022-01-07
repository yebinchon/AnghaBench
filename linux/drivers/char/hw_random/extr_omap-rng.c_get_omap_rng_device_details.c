
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_rng_dev {int * pdata; } ;


 int omap2_rng_pdata ;

__attribute__((used)) static int get_omap_rng_device_details(struct omap_rng_dev *omap_rng)
{

 omap_rng->pdata = &omap2_rng_pdata;
 return 0;
}
