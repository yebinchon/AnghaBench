
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_rng_dev {int dummy; } ;


 int RNG_STATUS_REG ;
 scalar_t__ omap_rng_read (struct omap_rng_dev*,int ) ;

__attribute__((used)) static inline u32 omap2_rng_data_present(struct omap_rng_dev *priv)
{
 return omap_rng_read(priv, RNG_STATUS_REG) ? 0 : 1;
}
