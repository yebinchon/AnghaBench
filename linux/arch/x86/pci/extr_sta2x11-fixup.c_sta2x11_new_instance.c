
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta2x11_instance {int list; scalar_t__ bus0; } ;
struct pci_dev {int dev; TYPE_1__* subordinate; } ;
struct TYPE_2__ {scalar_t__ number; } ;


 int GFP_ATOMIC ;
 int STA2X11_SWIOTLB_SIZE ;
 int dev_emerg (int *,char*) ;
 int dev_info (int *,char*,int) ;
 struct sta2x11_instance* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int sta2x11_instance_list ;
 scalar_t__ swiotlb_late_init_with_default_size (int) ;

__attribute__((used)) static void sta2x11_new_instance(struct pci_dev *pdev)
{
 struct sta2x11_instance *instance;

 instance = kzalloc(sizeof(*instance), GFP_ATOMIC);
 if (!instance)
  return;

 instance->bus0 = pdev->subordinate->number + 1;

 if (list_empty(&sta2x11_instance_list)) {
  int size = STA2X11_SWIOTLB_SIZE;

  dev_info(&pdev->dev, "Using SWIOTLB (size %i)\n", size);
  if (swiotlb_late_init_with_default_size(size))
   dev_emerg(&pdev->dev, "init swiotlb failed\n");
 }
 list_add(&instance->list, &sta2x11_instance_list);
}
