
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_rng_dev {int dummy; } ;


 int RNG_SYSCONFIG_REG ;
 int omap_rng_write (struct omap_rng_dev*,int ,int) ;

__attribute__((used)) static void omap2_rng_cleanup(struct omap_rng_dev *priv)
{
 omap_rng_write(priv, RNG_SYSCONFIG_REG, 0x0);
}
