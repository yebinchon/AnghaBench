
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bus_name; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct admhcd {int dummy; } ;


 int HCD_ERR (char*,int ) ;
 int admhc_init (struct admhcd*) ;
 int admhc_run (struct admhcd*) ;
 int admhc_stop (struct usb_hcd*) ;
 struct admhcd* hcd_to_admhcd (struct usb_hcd*) ;

__attribute__((used)) static int admhc_adm5120_start(struct usb_hcd *hcd)
{
 struct admhcd *ahcd = hcd_to_admhcd(hcd);
 int ret;

 ret = admhc_init(ahcd);
 if (ret < 0) {
  HCD_ERR("unable to init %s\n", hcd->self.bus_name);
  goto err;
 }

 ret = admhc_run(ahcd);
 if (ret < 0) {
  HCD_ERR("unable to run %s\n", hcd->self.bus_name);
  goto err_stop;
 }

 return 0;

err_stop:
 admhc_stop(hcd);
err:
 return ret;
}
