
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct omap_device* od; } ;
struct platform_device {TYPE_1__ archdata; } ;
struct omap_device {int dummy; } ;



__attribute__((used)) static inline struct omap_device *to_omap_device(struct platform_device *pdev)
{
 return pdev ? pdev->archdata.od : ((void*)0);
}
