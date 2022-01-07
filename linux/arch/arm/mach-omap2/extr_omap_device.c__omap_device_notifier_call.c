
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int of_node; } ;
struct TYPE_3__ {int od; } ;
struct platform_device {TYPE_2__ dev; TYPE_1__ archdata; } ;
struct omap_device {int _driver_status; int _state; } ;
struct notifier_block {int dummy; } ;






 int NOTIFY_DONE ;
 int OMAP_DEVICE_STATE_ENABLED ;
 int dev_err (void*,char*) ;
 int dev_info (void*,char*) ;
 int omap_auxdata_legacy_init (void*) ;
 int omap_device_build_from_dt (struct platform_device*) ;
 int omap_device_delete (int ) ;
 int omap_device_idle (struct platform_device*) ;
 int pm_runtime_set_active (void*) ;
 int pm_runtime_status_suspended (void*) ;
 struct omap_device* to_omap_device (struct platform_device*) ;
 struct platform_device* to_platform_device (void*) ;

__attribute__((used)) static int _omap_device_notifier_call(struct notifier_block *nb,
          unsigned long event, void *dev)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct omap_device *od;
 int err;

 switch (event) {
 case 129:
  if (pdev->archdata.od)
   omap_device_delete(pdev->archdata.od);
  break;
 case 128:
  od = to_omap_device(pdev);
  if (od && (od->_state == OMAP_DEVICE_STATE_ENABLED)) {
   dev_info(dev, "enabled after unload, idling\n");
   err = omap_device_idle(pdev);
   if (err)
    dev_err(dev, "failed to idle\n");
  }
  break;
 case 130:
  od = to_omap_device(pdev);
  if (od && (od->_state == OMAP_DEVICE_STATE_ENABLED) &&
      pm_runtime_status_suspended(dev)) {
   od->_driver_status = 130;
   pm_runtime_set_active(dev);
  }
  break;
 case 131:
  if (pdev->dev.of_node)
   omap_device_build_from_dt(pdev);
  omap_auxdata_legacy_init(dev);

 default:
  od = to_omap_device(pdev);
  if (od)
   od->_driver_status = event;
 }

 return NOTIFY_DONE;
}
