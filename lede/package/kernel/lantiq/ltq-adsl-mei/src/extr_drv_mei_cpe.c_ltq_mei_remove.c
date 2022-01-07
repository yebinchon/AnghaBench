
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int BSP_MAX_DEVICES ;
 int IFX_MEI_CleanUpDevNode (int) ;
 int IFX_MEI_ExitDevice (int) ;

__attribute__((used)) static int ltq_mei_remove(struct platform_device *pdev)
{
 int i = 0;
 int num;

 for (num = 0; num < BSP_MAX_DEVICES; num++) {
  IFX_MEI_CleanUpDevNode (num);
 }

 for (i = 0; i < BSP_MAX_DEVICES; i++) {
  for (i = 0; i < BSP_MAX_DEVICES; i++) {
   IFX_MEI_ExitDevice (i);
  }
 }
 return 0;
}
