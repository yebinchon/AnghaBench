
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct omap_hwmod {TYPE_3__* class; int name; } ;
struct TYPE_6__ {TYPE_2__* sysc; } ;
struct TYPE_5__ {int sysc_flags; int idlemodes; TYPE_1__* sysc_fields; } ;
struct TYPE_4__ {int enwkup_shift; } ;


 int EINVAL ;
 int HWMOD_IDLEMODE_SMART ;
 int MSTANDBY_SMART_WKUP ;
 int SIDLE_SMART_WKUP ;
 int SYSC_HAS_ENAWAKEUP ;
 int WARN (int,char*,int ) ;
 int _set_master_standbymode (struct omap_hwmod*,int ,int*) ;
 int _set_slave_idlemode (struct omap_hwmod*,int ,int*) ;

__attribute__((used)) static int _disable_wakeup(struct omap_hwmod *oh, u32 *v)
{
 if (!oh->class->sysc ||
     !((oh->class->sysc->sysc_flags & SYSC_HAS_ENAWAKEUP) ||
       (oh->class->sysc->idlemodes & SIDLE_SMART_WKUP) ||
       (oh->class->sysc->idlemodes & MSTANDBY_SMART_WKUP)))
  return -EINVAL;

 if (!oh->class->sysc->sysc_fields) {
  WARN(1, "omap_hwmod: %s: offset struct for sysconfig not provided in class\n", oh->name);
  return -EINVAL;
 }

 if (oh->class->sysc->sysc_flags & SYSC_HAS_ENAWAKEUP)
  *v &= ~(0x1 << oh->class->sysc->sysc_fields->enwkup_shift);

 if (oh->class->sysc->idlemodes & SIDLE_SMART_WKUP)
  _set_slave_idlemode(oh, HWMOD_IDLEMODE_SMART, v);
 if (oh->class->sysc->idlemodes & MSTANDBY_SMART_WKUP)
  _set_master_standbymode(oh, HWMOD_IDLEMODE_SMART, v);



 return 0;
}
