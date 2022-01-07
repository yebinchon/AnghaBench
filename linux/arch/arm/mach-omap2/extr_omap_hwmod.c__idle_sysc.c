
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct omap_hwmod {scalar_t__ _sysc_cache; int flags; TYPE_2__* class; } ;
struct TYPE_4__ {TYPE_1__* sysc; } ;
struct TYPE_3__ {int sysc_flags; int idlemodes; } ;


 int HWMOD_FORCE_MSTANDBY ;
 int HWMOD_IDLEMODE_FORCE ;
 int HWMOD_IDLEMODE_SMART ;
 int HWMOD_IDLEMODE_SMART_WKUP ;
 int HWMOD_SWSUP_MSTANDBY ;
 int HWMOD_SWSUP_SIDLE ;
 int MSTANDBY_SMART_WKUP ;
 int SIDLE_SMART_WKUP ;
 int SYSC_HAS_ENAWAKEUP ;
 int SYSC_HAS_MIDLEMODE ;
 int SYSC_HAS_SIDLEMODE ;
 int _enable_wakeup (struct omap_hwmod*,scalar_t__*) ;
 int _set_master_standbymode (struct omap_hwmod*,int,scalar_t__*) ;
 int _set_slave_idlemode (struct omap_hwmod*,int,scalar_t__*) ;
 int _write_sysconfig (scalar_t__,struct omap_hwmod*) ;

__attribute__((used)) static void _idle_sysc(struct omap_hwmod *oh)
{
 u8 idlemode, sf;
 u32 v;

 if (!oh->class->sysc)
  return;

 v = oh->_sysc_cache;
 sf = oh->class->sysc->sysc_flags;

 if (sf & SYSC_HAS_SIDLEMODE) {
  if (oh->flags & HWMOD_SWSUP_SIDLE) {
   idlemode = HWMOD_IDLEMODE_FORCE;
  } else {
   if (sf & SYSC_HAS_ENAWAKEUP)
    _enable_wakeup(oh, &v);
   if (oh->class->sysc->idlemodes & SIDLE_SMART_WKUP)
    idlemode = HWMOD_IDLEMODE_SMART_WKUP;
   else
    idlemode = HWMOD_IDLEMODE_SMART;
  }
  _set_slave_idlemode(oh, idlemode, &v);
 }

 if (sf & SYSC_HAS_MIDLEMODE) {
  if ((oh->flags & HWMOD_SWSUP_MSTANDBY) ||
      (oh->flags & HWMOD_FORCE_MSTANDBY)) {
   idlemode = HWMOD_IDLEMODE_FORCE;
  } else {
   if (sf & SYSC_HAS_ENAWAKEUP)
    _enable_wakeup(oh, &v);
   if (oh->class->sysc->idlemodes & MSTANDBY_SMART_WKUP)
    idlemode = HWMOD_IDLEMODE_SMART_WKUP;
   else
    idlemode = HWMOD_IDLEMODE_SMART;
  }
  _set_master_standbymode(oh, idlemode, &v);
 }


 if (oh->_sysc_cache != v)
  _write_sysconfig(v, oh);
}
