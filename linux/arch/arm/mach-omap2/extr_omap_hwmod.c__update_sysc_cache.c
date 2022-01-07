
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_hwmod {int _int_flags; TYPE_2__* class; int _sysc_cache; int name; } ;
struct TYPE_4__ {TYPE_1__* sysc; } ;
struct TYPE_3__ {int sysc_flags; int sysc_offs; } ;


 int EINVAL ;
 int SYSC_NO_CACHE ;
 int WARN (int,char*,int ) ;
 int _HWMOD_SYSCONFIG_LOADED ;
 int omap_hwmod_read (struct omap_hwmod*,int ) ;

__attribute__((used)) static int _update_sysc_cache(struct omap_hwmod *oh)
{
 if (!oh->class->sysc) {
  WARN(1, "omap_hwmod: %s: cannot read OCP_SYSCONFIG: not defined on hwmod's class\n", oh->name);
  return -EINVAL;
 }



 oh->_sysc_cache = omap_hwmod_read(oh, oh->class->sysc->sysc_offs);

 if (!(oh->class->sysc->sysc_flags & SYSC_NO_CACHE))
  oh->_int_flags |= _HWMOD_SYSCONFIG_LOADED;

 return 0;
}
