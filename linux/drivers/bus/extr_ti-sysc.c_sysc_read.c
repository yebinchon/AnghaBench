
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int quirks; } ;
struct sysc {int* offsets; scalar_t__ module_va; TYPE_1__ cfg; } ;


 int SYSC_QUIRK_16BIT ;
 size_t SYSC_REVISION ;
 int readl_relaxed (scalar_t__) ;
 int readw_relaxed (scalar_t__) ;

__attribute__((used)) static u32 sysc_read(struct sysc *ddata, int offset)
{
 if (ddata->cfg.quirks & SYSC_QUIRK_16BIT) {
  u32 val;

  val = readw_relaxed(ddata->module_va + offset);


  if (ddata->offsets[SYSC_REVISION] >= 0 &&
      offset == ddata->offsets[SYSC_REVISION]) {
   u16 tmp = readw_relaxed(ddata->module_va + offset + 4);

   val |= tmp << 16;
  }

  return val;
 }

 return readl_relaxed(ddata->module_va + offset);
}
