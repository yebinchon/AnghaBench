
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * driver; scalar_t__ bridge_dev; scalar_t__ pcidev; scalar_t__ scratch_page; scalar_t__ refcount; } ;


 int intel_gtt_teardown_scratch_page () ;
 TYPE_1__ intel_private ;
 int pci_dev_put (scalar_t__) ;

void intel_gmch_remove(void)
{
 if (--intel_private.refcount)
  return;

 if (intel_private.scratch_page)
  intel_gtt_teardown_scratch_page();
 if (intel_private.pcidev)
  pci_dev_put(intel_private.pcidev);
 if (intel_private.bridge_dev)
  pci_dev_put(intel_private.bridge_dev);
 intel_private.driver = ((void*)0);
}
