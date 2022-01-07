
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sysc_platform_data {int dummy; } ;
struct ti_sysc_module_data {int * cfg; int cap; int nr_offsets; int offsets; int module_size; int module_pa; scalar_t__ name; } ;
struct sysc {struct ti_sysc_module_data* mdata; int cfg; int cap; int offsets; int module_size; int module_pa; scalar_t__ legacy_mode; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SYSC_MAX_REGS ;
 struct ti_sysc_platform_data* dev_get_platdata (int ) ;
 struct ti_sysc_module_data* devm_kzalloc (int ,int,int ) ;

__attribute__((used)) static int sysc_init_pdata(struct sysc *ddata)
{
 struct ti_sysc_platform_data *pdata = dev_get_platdata(ddata->dev);
 struct ti_sysc_module_data *mdata;

 if (!pdata)
  return 0;

 mdata = devm_kzalloc(ddata->dev, sizeof(*mdata), GFP_KERNEL);
 if (!mdata)
  return -ENOMEM;

 if (ddata->legacy_mode) {
  mdata->name = ddata->legacy_mode;
  mdata->module_pa = ddata->module_pa;
  mdata->module_size = ddata->module_size;
  mdata->offsets = ddata->offsets;
  mdata->nr_offsets = SYSC_MAX_REGS;
  mdata->cap = ddata->cap;
  mdata->cfg = &ddata->cfg;
 }

 ddata->mdata = mdata;

 return 0;
}
