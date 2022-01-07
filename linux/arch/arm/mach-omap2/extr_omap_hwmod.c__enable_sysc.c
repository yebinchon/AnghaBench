
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct omap_hwmod {int flags; TYPE_2__* class; int _sysc_cache; } ;
struct clockdomain {int flags; } ;
struct TYPE_4__ {TYPE_1__* sysc; } ;
struct TYPE_3__ {int sysc_flags; int idlemodes; } ;


 int CLKDM_ACTIVE_WITH_MPU ;
 int CLOCKACT_TEST_ICLK ;
 int HWMOD_CONTROL_OPT_CLKS_IN_RESET ;
 int HWMOD_FORCE_MSTANDBY ;
 int HWMOD_IDLEMODE_FORCE ;
 int HWMOD_IDLEMODE_NO ;
 int HWMOD_IDLEMODE_SMART ;
 int HWMOD_IDLEMODE_SMART_WKUP ;
 int HWMOD_NO_OCP_AUTOIDLE ;
 int HWMOD_SET_DEFAULT_CLOCKACT ;
 int HWMOD_SWSUP_MSTANDBY ;
 int HWMOD_SWSUP_SIDLE ;
 int HWMOD_SWSUP_SIDLE_ACT ;
 int MSTANDBY_SMART_WKUP ;
 int SIDLE_SMART ;
 int SIDLE_SMART_WKUP ;
 int SYSC_HAS_AUTOIDLE ;
 int SYSC_HAS_CLOCKACTIVITY ;
 int SYSC_HAS_ENAWAKEUP ;
 int SYSC_HAS_MIDLEMODE ;
 int SYSC_HAS_SIDLEMODE ;
 int _disable_optional_clocks (struct omap_hwmod*) ;
 int _enable_optional_clocks (struct omap_hwmod*) ;
 int _enable_wakeup (struct omap_hwmod*,int *) ;
 struct clockdomain* _get_clkdm (struct omap_hwmod*) ;
 int _set_clockactivity (struct omap_hwmod*,int ,int *) ;
 int _set_master_standbymode (struct omap_hwmod*,int,int *) ;
 int _set_module_autoidle (struct omap_hwmod*,int,int *) ;
 int _set_slave_idlemode (struct omap_hwmod*,int,int *) ;
 int _wait_softreset_complete (struct omap_hwmod*) ;
 int _write_sysconfig (int ,struct omap_hwmod*) ;

__attribute__((used)) static void _enable_sysc(struct omap_hwmod *oh)
{
 u8 idlemode, sf;
 u32 v;
 bool clkdm_act;
 struct clockdomain *clkdm;

 if (!oh->class->sysc)
  return;







 if (oh->flags & HWMOD_CONTROL_OPT_CLKS_IN_RESET)
  _enable_optional_clocks(oh);
 _wait_softreset_complete(oh);
 if (oh->flags & HWMOD_CONTROL_OPT_CLKS_IN_RESET)
  _disable_optional_clocks(oh);

 v = oh->_sysc_cache;
 sf = oh->class->sysc->sysc_flags;

 clkdm = _get_clkdm(oh);
 if (sf & SYSC_HAS_SIDLEMODE) {
  if (oh->flags & HWMOD_SWSUP_SIDLE ||
      oh->flags & HWMOD_SWSUP_SIDLE_ACT) {
   idlemode = HWMOD_IDLEMODE_NO;
  } else {
   if (sf & SYSC_HAS_ENAWAKEUP)
    _enable_wakeup(oh, &v);
   if (oh->class->sysc->idlemodes & SIDLE_SMART_WKUP)
    idlemode = HWMOD_IDLEMODE_SMART_WKUP;
   else
    idlemode = HWMOD_IDLEMODE_SMART;
  }





  clkdm_act = (clkdm && clkdm->flags & CLKDM_ACTIVE_WITH_MPU);
  if (clkdm_act && !(oh->class->sysc->idlemodes &
       (SIDLE_SMART | SIDLE_SMART_WKUP)))
   idlemode = HWMOD_IDLEMODE_FORCE;

  _set_slave_idlemode(oh, idlemode, &v);
 }

 if (sf & SYSC_HAS_MIDLEMODE) {
  if (oh->flags & HWMOD_FORCE_MSTANDBY) {
   idlemode = HWMOD_IDLEMODE_FORCE;
  } else if (oh->flags & HWMOD_SWSUP_MSTANDBY) {
   idlemode = HWMOD_IDLEMODE_NO;
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






 if ((oh->flags & HWMOD_SET_DEFAULT_CLOCKACT) &&
     (sf & SYSC_HAS_CLOCKACTIVITY))
  _set_clockactivity(oh, CLOCKACT_TEST_ICLK, &v);

 _write_sysconfig(v, oh);





 if (sf & SYSC_HAS_AUTOIDLE) {
  idlemode = (oh->flags & HWMOD_NO_OCP_AUTOIDLE) ?
   0 : 1;
  _set_module_autoidle(oh, idlemode, &v);
  _write_sysconfig(v, oh);
 }
}
