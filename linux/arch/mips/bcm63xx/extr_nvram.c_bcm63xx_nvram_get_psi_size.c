
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ psi_size; } ;


 int BCM63XX_DEFAULT_PSI_SIZE ;
 TYPE_1__ nvram ;

int bcm63xx_nvram_get_psi_size(void)
{
 if (nvram.psi_size > 0)
  return nvram.psi_size;

 return BCM63XX_DEFAULT_PSI_SIZE;
}
