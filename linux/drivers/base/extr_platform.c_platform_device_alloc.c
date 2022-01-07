
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int release; } ;
struct platform_device {int id; TYPE_1__ dev; int name; } ;
struct platform_object {struct platform_device pdev; int name; } ;


 int GFP_KERNEL ;
 int device_initialize (TYPE_1__*) ;
 struct platform_object* kzalloc (scalar_t__,int ) ;
 int platform_device_release ;
 int setup_pdev_dma_masks (struct platform_device*) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

struct platform_device *platform_device_alloc(const char *name, int id)
{
 struct platform_object *pa;

 pa = kzalloc(sizeof(*pa) + strlen(name) + 1, GFP_KERNEL);
 if (pa) {
  strcpy(pa->name, name);
  pa->pdev.name = pa->name;
  pa->pdev.id = id;
  device_initialize(&pa->pdev.dev);
  pa->pdev.dev.release = platform_device_release;
  setup_pdev_dma_masks(&pa->pdev);
 }

 return pa ? &pa->pdev : ((void*)0);
}
