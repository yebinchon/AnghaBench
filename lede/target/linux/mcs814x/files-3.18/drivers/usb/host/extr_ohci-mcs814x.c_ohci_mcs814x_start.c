
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bus_name; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct ohci_hcd {int dummy; } ;


 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_err (struct ohci_hcd*,char*,int ) ;
 int ohci_init (struct ohci_hcd*) ;
 int ohci_run (struct ohci_hcd*) ;
 int ohci_stop (struct usb_hcd*) ;

__attribute__((used)) static int ohci_mcs814x_start(struct usb_hcd *hcd)
{
 struct ohci_hcd *ohci = hcd_to_ohci(hcd);
 int ret;

 ret = ohci_init(ohci);
 if (ret < 0)
  return ret;

 ret = ohci_run(ohci);
 if (ret < 0) {
  ohci_err(ohci, "can't start %s", hcd->self.bus_name);
  ohci_stop(hcd);
  return ret;
 }

 return 0;
}
