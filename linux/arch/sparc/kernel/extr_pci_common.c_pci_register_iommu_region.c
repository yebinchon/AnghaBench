
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct resource {char* name; int flags; scalar_t__ start; scalar_t__ end; } ;
struct TYPE_6__ {scalar_t__ start; } ;
struct pci_pbm_info {int name; TYPE_3__ mem_space; TYPE_2__* op; } ;
struct TYPE_4__ {int of_node; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int GFP_KERNEL ;
 int IORESOURCE_BUSY ;
 int kfree (struct resource*) ;
 struct resource* kzalloc (int,int ) ;
 scalar_t__* of_get_property (int ,char*,int *) ;
 int pr_info (char*,int ) ;
 scalar_t__ request_resource (TYPE_3__*,struct resource*) ;

__attribute__((used)) static void pci_register_iommu_region(struct pci_pbm_info *pbm)
{
 const u32 *vdma = of_get_property(pbm->op->dev.of_node, "virtual-dma",
       ((void*)0));

 if (vdma) {
  struct resource *rp = kzalloc(sizeof(*rp), GFP_KERNEL);

  if (!rp) {
   pr_info("%s: Cannot allocate IOMMU resource.\n",
    pbm->name);
   return;
  }
  rp->name = "IOMMU";
  rp->start = pbm->mem_space.start + (unsigned long) vdma[0];
  rp->end = rp->start + (unsigned long) vdma[1] - 1UL;
  rp->flags = IORESOURCE_BUSY;
  if (request_resource(&pbm->mem_space, rp)) {
   pr_info("%s: Unable to request IOMMU resource.\n",
    pbm->name);
   kfree(rp);
  }
 }
}
