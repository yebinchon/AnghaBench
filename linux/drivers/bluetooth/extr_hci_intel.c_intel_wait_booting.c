
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_data {int flags; } ;
struct hci_uart {int hdev; struct intel_data* priv; } ;


 int EINTR ;
 int ETIMEDOUT ;
 int STATE_BOOTING ;
 int TASK_INTERRUPTIBLE ;
 int bt_dev_err (int ,char*) ;
 int msecs_to_jiffies (int) ;
 int wait_on_bit_timeout (int *,int ,int ,int ) ;

__attribute__((used)) static int intel_wait_booting(struct hci_uart *hu)
{
 struct intel_data *intel = hu->priv;
 int err;

 err = wait_on_bit_timeout(&intel->flags, STATE_BOOTING,
      TASK_INTERRUPTIBLE,
      msecs_to_jiffies(1000));

 if (err == -EINTR) {
  bt_dev_err(hu->hdev, "Device boot interrupted");
  return -EINTR;
 }

 if (err) {
  bt_dev_err(hu->hdev, "Device boot timeout");
  return -ETIMEDOUT;
 }

 return err;
}
