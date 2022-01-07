
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrng {int dummy; } ;


 int omap3_rom_rng_get_random (void*,int) ;

__attribute__((used)) static int omap3_rom_rng_read(struct hwrng *rng, void *data, size_t max, bool w)
{
 int r;

 r = omap3_rom_rng_get_random(data, 4);
 if (r < 0)
  return r;
 return 4;
}
