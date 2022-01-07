
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct omap_hwmod {TYPE_2__* class; int _sysc_cache; int name; } ;
struct TYPE_4__ {int (* lock ) (struct omap_hwmod*) ;TYPE_1__* sysc; int (* unlock ) (struct omap_hwmod*) ;} ;
struct TYPE_3__ {int sysc_offs; } ;


 int WARN (int,char*,int ) ;
 int omap_hwmod_write (int ,struct omap_hwmod*,int ) ;
 int stub1 (struct omap_hwmod*) ;
 int stub2 (struct omap_hwmod*) ;

__attribute__((used)) static void _write_sysconfig(u32 v, struct omap_hwmod *oh)
{
 if (!oh->class->sysc) {
  WARN(1, "omap_hwmod: %s: cannot write OCP_SYSCONFIG: not defined on hwmod's class\n", oh->name);
  return;
 }




 oh->_sysc_cache = v;







 if (oh->class->unlock)
  oh->class->unlock(oh);

 omap_hwmod_write(v, oh, oh->class->sysc->sysc_offs);

 if (oh->class->lock)
  oh->class->lock(oh);
}
