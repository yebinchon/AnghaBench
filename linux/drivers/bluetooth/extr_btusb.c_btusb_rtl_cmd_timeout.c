
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct gpio_desc {int dummy; } ;
struct btusb_data {int cmd_timeout_cnt; int flags; struct gpio_desc* reset_gpio; } ;


 int BTUSB_HW_RESET_ACTIVE ;
 int bt_dev_err (struct hci_dev*,char*) ;
 int gpiod_set_value_cansleep (struct gpio_desc*,int) ;
 struct btusb_data* hci_get_drvdata (struct hci_dev*) ;
 int msleep (int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void btusb_rtl_cmd_timeout(struct hci_dev *hdev)
{
 struct btusb_data *data = hci_get_drvdata(hdev);
 struct gpio_desc *reset_gpio = data->reset_gpio;

 if (++data->cmd_timeout_cnt < 5)
  return;

 if (!reset_gpio) {
  bt_dev_err(hdev, "No gpio to reset Realtek device, ignoring");
  return;
 }







 if (test_and_set_bit(BTUSB_HW_RESET_ACTIVE, &data->flags)) {
  bt_dev_err(hdev, "last reset failed? Not resetting again");
  return;
 }

 bt_dev_err(hdev, "Reset Realtek device via gpio");
 gpiod_set_value_cansleep(reset_gpio, 0);
 msleep(200);
 gpiod_set_value_cansleep(reset_gpio, 1);
}
