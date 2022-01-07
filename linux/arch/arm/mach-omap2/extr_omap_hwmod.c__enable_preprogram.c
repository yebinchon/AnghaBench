
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hwmod {TYPE_1__* class; } ;
struct TYPE_2__ {int (* enable_preprogram ) (struct omap_hwmod*) ;} ;


 int stub1 (struct omap_hwmod*) ;

__attribute__((used)) static int _enable_preprogram(struct omap_hwmod *oh)
{
 if (!oh->class->enable_preprogram)
  return 0;

 return oh->class->enable_preprogram(oh);
}
