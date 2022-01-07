
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysc {int rsts; int * dev; int idle_work; } ;
struct platform_device {int dev; } ;


 int cancel_delayed_work_sync (int *) ;
 int of_platform_depopulate (int *) ;
 struct sysc* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_put_sync (int *) ;
 int reset_control_assert (int ) ;
 int sysc_unprepare (struct sysc*) ;

__attribute__((used)) static int sysc_remove(struct platform_device *pdev)
{
 struct sysc *ddata = platform_get_drvdata(pdev);
 int error;

 cancel_delayed_work_sync(&ddata->idle_work);

 error = pm_runtime_get_sync(ddata->dev);
 if (error < 0) {
  pm_runtime_put_noidle(ddata->dev);
  pm_runtime_disable(ddata->dev);
  goto unprepare;
 }

 of_platform_depopulate(&pdev->dev);

 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 reset_control_assert(ddata->rsts);

unprepare:
 sysc_unprepare(ddata);

 return 0;
}
