
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sysc {scalar_t__* offsets; int module_size; int module_va; int module_pa; int dev; } ;


 int EIO ;
 size_t SYSC_REVISION ;
 size_t SYSC_SYSCONFIG ;
 size_t SYSC_SYSSTATUS ;
 int SZ_1K ;
 int devm_ioremap (int ,int ,int) ;
 int max3 (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int sysc_ioremap(struct sysc *ddata)
{
 int size;

 if (ddata->offsets[SYSC_REVISION] < 0 &&
     ddata->offsets[SYSC_SYSCONFIG] < 0 &&
     ddata->offsets[SYSC_SYSSTATUS] < 0) {
  size = ddata->module_size;
 } else {
  size = max3(ddata->offsets[SYSC_REVISION],
       ddata->offsets[SYSC_SYSCONFIG],
       ddata->offsets[SYSC_SYSSTATUS]);

  if (size < SZ_1K)
   size = SZ_1K;

  if ((size + sizeof(u32)) > ddata->module_size)
   size = ddata->module_size;
 }

 ddata->module_va = devm_ioremap(ddata->dev,
     ddata->module_pa,
     size + sizeof(u32));
 if (!ddata->module_va)
  return -EIO;

 return 0;
}
