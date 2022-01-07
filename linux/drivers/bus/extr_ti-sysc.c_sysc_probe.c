
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct ti_sysc_platform_data {int * auxdata; } ;
struct TYPE_11__ {int quirks; } ;
struct sysc {int idle_work; TYPE_1__ cfg; TYPE_2__* dev; scalar_t__ rsts; } ;
struct TYPE_12__ {int of_node; int * type; } ;
struct platform_device {TYPE_2__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int SYSC_QUIRK_NO_IDLE ;
 int SYSC_QUIRK_NO_IDLE_ON_INIT ;
 int SYSC_QUIRK_NO_RESET_ON_INIT ;
 struct ti_sysc_platform_data* dev_get_platdata (TYPE_2__*) ;
 struct sysc* devm_kzalloc (TYPE_2__*,int,int ) ;
 int of_platform_populate (int ,int ,int *,TYPE_2__*) ;
 int platform_set_drvdata (struct platform_device*,struct sysc*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_runtime_get_sync (TYPE_2__*) ;
 int pm_runtime_put (TYPE_2__*) ;
 int pm_runtime_put_noidle (TYPE_2__*) ;
 int pm_runtime_put_sync (TYPE_2__*) ;
 int reset_control_assert (scalar_t__) ;
 int schedule_delayed_work (int *,int) ;
 int sysc_device_type ;
 int sysc_get_clocks (struct sysc*) ;
 int sysc_init_dts_quirks (struct sysc*) ;
 int sysc_init_early_quirks (struct sysc*) ;
 int sysc_init_idlemodes (struct sysc*) ;
 int sysc_init_match (struct sysc*) ;
 int sysc_init_module (struct sysc*) ;
 int sysc_init_pdata (struct sysc*) ;
 int sysc_init_resets (struct sysc*) ;
 int sysc_init_sysc_mask (struct sysc*) ;
 int sysc_init_syss_mask (struct sysc*) ;
 int sysc_map_and_check_registers (struct sysc*) ;
 int sysc_match_table ;
 int sysc_show_registers (struct sysc*) ;
 int sysc_unprepare (struct sysc*) ;
 int ti_sysc_idle ;

__attribute__((used)) static int sysc_probe(struct platform_device *pdev)
{
 struct ti_sysc_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct sysc *ddata;
 int error;

 ddata = devm_kzalloc(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
 if (!ddata)
  return -ENOMEM;

 ddata->dev = &pdev->dev;
 platform_set_drvdata(pdev, ddata);

 error = sysc_init_match(ddata);
 if (error)
  return error;

 error = sysc_init_dts_quirks(ddata);
 if (error)
  return error;

 error = sysc_map_and_check_registers(ddata);
 if (error)
  return error;

 error = sysc_init_sysc_mask(ddata);
 if (error)
  return error;

 error = sysc_init_idlemodes(ddata);
 if (error)
  return error;

 error = sysc_init_syss_mask(ddata);
 if (error)
  return error;

 error = sysc_init_pdata(ddata);
 if (error)
  return error;

 sysc_init_early_quirks(ddata);

 error = sysc_get_clocks(ddata);
 if (error)
  return error;

 error = sysc_init_resets(ddata);
 if (error)
  goto unprepare;

 error = sysc_init_module(ddata);
 if (error)
  goto unprepare;

 pm_runtime_enable(ddata->dev);
 error = pm_runtime_get_sync(ddata->dev);
 if (error < 0) {
  pm_runtime_put_noidle(ddata->dev);
  pm_runtime_disable(ddata->dev);
  goto unprepare;
 }


 if (ddata->rsts)
  reset_control_assert(ddata->rsts);

 sysc_show_registers(ddata);

 ddata->dev->type = &sysc_device_type;
 error = of_platform_populate(ddata->dev->of_node, sysc_match_table,
         pdata ? pdata->auxdata : ((void*)0),
         ddata->dev);
 if (error)
  goto err;

 INIT_DELAYED_WORK(&ddata->idle_work, ti_sysc_idle);


 if (ddata->cfg.quirks & (SYSC_QUIRK_NO_IDLE |
     SYSC_QUIRK_NO_IDLE_ON_INIT |
     SYSC_QUIRK_NO_RESET_ON_INIT)) {
  schedule_delayed_work(&ddata->idle_work, 3000);
 } else {
  pm_runtime_put(&pdev->dev);
 }

 return 0;

err:
 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
unprepare:
 sysc_unprepare(ddata);

 return error;
}
