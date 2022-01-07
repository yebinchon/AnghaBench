
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysc {scalar_t__* offsets; int module_size; int dev; } ;


 int EINVAL ;
 int SYSC_MAX_REGS ;
 int dev_err (int ,char*,...) ;

__attribute__((used)) static int sysc_check_registers(struct sysc *ddata)
{
 int i, j, nr_regs = 0, nr_matches = 0;

 for (i = 0; i < SYSC_MAX_REGS; i++) {
  if (ddata->offsets[i] < 0)
   continue;

  if (ddata->offsets[i] > (ddata->module_size - 4)) {
   dev_err(ddata->dev, "register outside module range");

    return -EINVAL;
  }

  for (j = 0; j < SYSC_MAX_REGS; j++) {
   if (ddata->offsets[j] < 0)
    continue;

   if (ddata->offsets[i] == ddata->offsets[j])
    nr_matches++;
  }
  nr_regs++;
 }

 if (nr_matches > nr_regs) {
  dev_err(ddata->dev, "overlapping registers: (%i/%i)",
   nr_regs, nr_matches);

  return -EINVAL;
 }

 return 0;
}
