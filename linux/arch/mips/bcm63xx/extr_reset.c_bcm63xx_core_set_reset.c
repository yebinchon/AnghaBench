
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bcm63xx_core_reset { ____Placeholder_bcm63xx_core_reset } bcm63xx_core_reset ;


 int __bcm63xx_core_set_reset (int ,int) ;
 int * bcm63xx_reset_bits ;

void bcm63xx_core_set_reset(enum bcm63xx_core_reset core, int reset)
{
 __bcm63xx_core_set_reset(bcm63xx_reset_bits[core], reset);
}
