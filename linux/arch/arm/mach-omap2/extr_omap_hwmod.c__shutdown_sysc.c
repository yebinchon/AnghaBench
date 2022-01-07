
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct omap_hwmod {TYPE_2__* class; int _sysc_cache; } ;
struct TYPE_4__ {TYPE_1__* sysc; } ;
struct TYPE_3__ {int sysc_flags; } ;


 int HWMOD_IDLEMODE_FORCE ;
 int SYSC_HAS_AUTOIDLE ;
 int SYSC_HAS_MIDLEMODE ;
 int SYSC_HAS_SIDLEMODE ;
 int _set_master_standbymode (struct omap_hwmod*,int ,int *) ;
 int _set_module_autoidle (struct omap_hwmod*,int,int *) ;
 int _set_slave_idlemode (struct omap_hwmod*,int ,int *) ;
 int _write_sysconfig (int ,struct omap_hwmod*) ;

__attribute__((used)) static void _shutdown_sysc(struct omap_hwmod *oh)
{
 u32 v;
 u8 sf;

 if (!oh->class->sysc)
  return;

 v = oh->_sysc_cache;
 sf = oh->class->sysc->sysc_flags;

 if (sf & SYSC_HAS_SIDLEMODE)
  _set_slave_idlemode(oh, HWMOD_IDLEMODE_FORCE, &v);

 if (sf & SYSC_HAS_MIDLEMODE)
  _set_master_standbymode(oh, HWMOD_IDLEMODE_FORCE, &v);

 if (sf & SYSC_HAS_AUTOIDLE)
  _set_module_autoidle(oh, 1, &v);

 _write_sysconfig(v, oh);
}
