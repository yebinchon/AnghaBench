
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
 int writel_relaxed (int,scalar_t__) ;
 int writew_relaxed (int,scalar_t__) ;

__attribute__((used)) static void sysc_write(struct sysc *ddata, int offset, u32 value)
{
 if (ddata->cfg.quirks & SYSC_QUIRK_16BIT) {
  writew_relaxed(value & 0xffff, ddata->module_va + offset);


  if (ddata->offsets[SYSC_REVISION] >= 0 &&
      offset == ddata->offsets[SYSC_REVISION]) {
   u16 hi = value >> 16;

   writew_relaxed(hi, ddata->module_va + offset + 4);
  }

  return;
 }

 writel_relaxed(value, ddata->module_va + offset);
}
