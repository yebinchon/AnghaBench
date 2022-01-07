
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int context_lost_counter; } ;
struct TYPE_4__ {TYPE_1__ omap4; } ;
struct omap_hwmod {TYPE_2__ prcm; } ;



__attribute__((used)) static int _omap4_get_context_lost(struct omap_hwmod *oh)
{
 return oh->prcm.omap4.context_lost_counter;
}
