
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ac97_reset_config ;
 int pxa2xx_mfp_config (int *,int) ;

void pxa27x_configure_ac97reset(int reset_gpio, bool to_gpio)
{
 if (reset_gpio == 113)
  pxa2xx_mfp_config(to_gpio ? &ac97_reset_config[0] :
      &ac97_reset_config[1], 1);

 if (reset_gpio == 95)
  pxa2xx_mfp_config(to_gpio ? &ac97_reset_config[2] :
      &ac97_reset_config[3], 1);
}
