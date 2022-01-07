
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btusb_data {int ctrl_anchor; int diag_anchor; int isoc_anchor; int bulk_anchor; int intr_anchor; } ;


 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void btusb_stop_traffic(struct btusb_data *data)
{
 usb_kill_anchored_urbs(&data->intr_anchor);
 usb_kill_anchored_urbs(&data->bulk_anchor);
 usb_kill_anchored_urbs(&data->isoc_anchor);
 usb_kill_anchored_urbs(&data->diag_anchor);
 usb_kill_anchored_urbs(&data->ctrl_anchor);
}
