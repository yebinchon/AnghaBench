
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* name; scalar_t__ start; int flags; } ;
struct TYPE_6__ {TYPE_1__* pcidev; int i9xx_flush_page; TYPE_2__ ifp_resource; } ;
struct TYPE_4__ {int dev; } ;


 int INTEL_GTT_GEN ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_G33 ;
 int PAGE_SIZE ;
 int dev_err (int *,char*) ;
 int intel_i915_setup_chipset_flush () ;
 int intel_i965_g33_setup_chipset_flush () ;
 TYPE_3__ intel_private ;
 int ioremap_nocache (scalar_t__,int ) ;

__attribute__((used)) static void intel_i9xx_setup_flush(void)
{

 if (intel_private.ifp_resource.start)
  return;

 if (INTEL_GTT_GEN == 6)
  return;


 intel_private.ifp_resource.name = "Intel Flush Page";
 intel_private.ifp_resource.flags = IORESOURCE_MEM;


 if (IS_G33 || INTEL_GTT_GEN >= 4) {
  intel_i965_g33_setup_chipset_flush();
 } else {
  intel_i915_setup_chipset_flush();
 }

 if (intel_private.ifp_resource.start)
  intel_private.i9xx_flush_page = ioremap_nocache(intel_private.ifp_resource.start, PAGE_SIZE);
 if (!intel_private.i9xx_flush_page)
  dev_err(&intel_private.pcidev->dev,
   "can't ioremap flush page - no chipset flushing\n");
}
