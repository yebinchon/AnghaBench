
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct omap_hwmod {TYPE_3__* class; int name; } ;
struct TYPE_6__ {TYPE_2__* sysc; } ;
struct TYPE_5__ {int sysc_flags; TYPE_1__* sysc_fields; } ;
struct TYPE_4__ {int autoidle_shift; } ;


 int EINVAL ;
 int SYSC_HAS_AUTOIDLE ;
 int WARN (int,char*,int ) ;

__attribute__((used)) static int _set_module_autoidle(struct omap_hwmod *oh, u8 autoidle,
    u32 *v)
{
 u32 autoidle_mask;
 u8 autoidle_shift;

 if (!oh->class->sysc ||
     !(oh->class->sysc->sysc_flags & SYSC_HAS_AUTOIDLE))
  return -EINVAL;

 if (!oh->class->sysc->sysc_fields) {
  WARN(1, "omap_hwmod: %s: offset struct for sysconfig not provided in class\n", oh->name);
  return -EINVAL;
 }

 autoidle_shift = oh->class->sysc->sysc_fields->autoidle_shift;
 autoidle_mask = (0x1 << autoidle_shift);

 *v &= ~autoidle_mask;
 *v |= autoidle << autoidle_shift;

 return 0;
}
