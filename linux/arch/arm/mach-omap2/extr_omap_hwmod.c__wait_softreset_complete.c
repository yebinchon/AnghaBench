
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct omap_hwmod_class_sysconfig {int sysc_flags; scalar_t__ syss_offs; scalar_t__ sysc_offs; TYPE_1__* sysc_fields; } ;
struct omap_hwmod {TYPE_2__* class; } ;
struct TYPE_4__ {struct omap_hwmod_class_sysconfig* sysc; } ;
struct TYPE_3__ {int srst_shift; } ;


 int MAX_MODULE_SOFTRESET_WAIT ;
 int SYSC_HAS_RESET_STATUS ;
 int SYSS_HAS_RESET_STATUS ;
 int SYSS_RESETDONE_MASK ;
 int omap_hwmod_read (struct omap_hwmod*,scalar_t__) ;
 int omap_test_timeout (int,int ,int) ;

__attribute__((used)) static int _wait_softreset_complete(struct omap_hwmod *oh)
{
 struct omap_hwmod_class_sysconfig *sysc;
 u32 softrst_mask;
 int c = 0;

 sysc = oh->class->sysc;

 if (sysc->sysc_flags & SYSS_HAS_RESET_STATUS && sysc->syss_offs > 0)
  omap_test_timeout((omap_hwmod_read(oh, sysc->syss_offs)
       & SYSS_RESETDONE_MASK),
      MAX_MODULE_SOFTRESET_WAIT, c);
 else if (sysc->sysc_flags & SYSC_HAS_RESET_STATUS) {
  softrst_mask = (0x1 << sysc->sysc_fields->srst_shift);
  omap_test_timeout(!(omap_hwmod_read(oh, sysc->sysc_offs)
        & softrst_mask),
      MAX_MODULE_SOFTRESET_WAIT, c);
 }

 return c;
}
