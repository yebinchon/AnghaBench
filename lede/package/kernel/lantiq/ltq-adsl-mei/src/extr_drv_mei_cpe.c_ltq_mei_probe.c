
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct class {int dummy; } ;
struct TYPE_4__ {int revision; int minor; int major; } ;
struct TYPE_3__ {int * function; } ;


 int BSP_MAX_DEVICES ;
 int DFE_Loopback_Test () ;
 int DSL_BSP_CB_LAST ;
 int EIO ;
 int IFX_MEI_DMSG (char*) ;
 int IFX_MEI_EMSG (char*) ;
 int IFX_MEI_InitDevNode (int) ;
 scalar_t__ IFX_MEI_InitDevice (int) ;
 int MEI_MAJOR ;
 int MKDEV (int ,int ) ;
 int THIS_MODULE ;
 TYPE_2__ bsp_mei_version ;
 struct class* class_create (int ,char*) ;
 int device_create (struct class*,int *,int ,int *,char*) ;
 TYPE_1__* dsl_bsp_event_callback ;
 int pr_info (char*,int ,int ,int ) ;

__attribute__((used)) static int ltq_mei_probe(struct platform_device *pdev)
{
 int i = 0;
 static struct class *dsl_class;

 pr_info("IFX MEI Version %ld.%02ld.%02ld\n", bsp_mei_version.major, bsp_mei_version.minor, bsp_mei_version.revision);

 for (i = 0; i < BSP_MAX_DEVICES; i++) {
  if (IFX_MEI_InitDevice (i) != 0) {
   IFX_MEI_EMSG("Init device fail!\n");
   return -EIO;
  }
  IFX_MEI_InitDevNode (i);
 }
  for (i = 0; i <= DSL_BSP_CB_LAST ; i++)
  dsl_bsp_event_callback[i].function = ((void*)0);





 dsl_class = class_create(THIS_MODULE, "ifx_mei");
 device_create(dsl_class, ((void*)0), MKDEV(MEI_MAJOR, 0), ((void*)0), "ifx_mei");
 return 0;
}
