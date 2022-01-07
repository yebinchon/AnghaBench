
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_2__ {int quirks; } ;


 int USB_QUIRK_RESET_RESUME ;
 int btusb_needs_reset_resume_table ;
 scalar_t__ dmi_check_system (int ) ;
 TYPE_1__* interface_to_usbdev (struct usb_interface*) ;

__attribute__((used)) static void btusb_check_needs_reset_resume(struct usb_interface *intf)
{
 if (dmi_check_system(btusb_needs_reset_resume_table))
  interface_to_usbdev(intf)->quirks |= USB_QUIRK_RESET_RESUME;
}
