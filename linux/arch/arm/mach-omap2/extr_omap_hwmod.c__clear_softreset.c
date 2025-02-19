
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct omap_hwmod {TYPE_2__* class; int name; } ;
struct TYPE_6__ {int sysc_flags; TYPE_1__* sysc_fields; } ;
struct TYPE_5__ {TYPE_3__* sysc; } ;
struct TYPE_4__ {int srst_shift; } ;


 int EINVAL ;
 int SYSC_HAS_SOFTRESET ;
 int WARN (int,char*,int ) ;

__attribute__((used)) static int _clear_softreset(struct omap_hwmod *oh, u32 *v)
{
 u32 softrst_mask;

 if (!oh->class->sysc ||
     !(oh->class->sysc->sysc_flags & SYSC_HAS_SOFTRESET))
  return -EINVAL;

 if (!oh->class->sysc->sysc_fields) {
  WARN(1,
       "omap_hwmod: %s: sysc_fields absent for sysconfig class\n",
       oh->name);
  return -EINVAL;
 }

 softrst_mask = (0x1 << oh->class->sysc->sysc_fields->srst_shift);

 *v &= ~softrst_mask;

 return 0;
}
