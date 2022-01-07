
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_device {struct omap_device* hwmods; TYPE_2__* pdev; } ;
struct TYPE_3__ {int * od; } ;
struct TYPE_4__ {TYPE_1__ archdata; } ;


 int kfree (struct omap_device*) ;

void omap_device_delete(struct omap_device *od)
{
 if (!od)
  return;

 od->pdev->archdata.od = ((void*)0);
 kfree(od->hwmods);
 kfree(od);
}
