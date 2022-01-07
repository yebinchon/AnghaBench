
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; void (* rearm ) () ;} ;


 TYPE_1__ pcs_pdata ;

void omap_pcs_legacy_init(int irq, void (*rearm)(void))
{
 pcs_pdata.irq = irq;
 pcs_pdata.rearm = rearm;
}
