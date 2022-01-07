
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct omap_hwmod {TYPE_2__* class; int name; } ;
struct TYPE_6__ {int sysc_flags; TYPE_1__* sysc_fields; } ;
struct TYPE_5__ {TYPE_3__* sysc; } ;
struct TYPE_4__ {int midle_shift; } ;


 int EINVAL ;
 int SYSC_HAS_MIDLEMODE ;
 int WARN (int,char*,int ) ;
 int __ffs (int) ;

__attribute__((used)) static int _set_master_standbymode(struct omap_hwmod *oh, u8 standbymode,
       u32 *v)
{
 u32 mstandby_mask;
 u8 mstandby_shift;

 if (!oh->class->sysc ||
     !(oh->class->sysc->sysc_flags & SYSC_HAS_MIDLEMODE))
  return -EINVAL;

 if (!oh->class->sysc->sysc_fields) {
  WARN(1, "omap_hwmod: %s: offset struct for sysconfig not provided in class\n", oh->name);
  return -EINVAL;
 }

 mstandby_shift = oh->class->sysc->sysc_fields->midle_shift;
 mstandby_mask = (0x3 << mstandby_shift);

 *v &= ~mstandby_mask;
 *v |= __ffs(standbymode) << mstandby_shift;

 return 0;
}
