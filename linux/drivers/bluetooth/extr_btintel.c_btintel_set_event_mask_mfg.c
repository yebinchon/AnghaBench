
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;


 int btintel_enter_mfg (struct hci_dev*) ;
 int btintel_exit_mfg (struct hci_dev*,int,int) ;
 int btintel_set_event_mask (struct hci_dev*,int) ;

int btintel_set_event_mask_mfg(struct hci_dev *hdev, bool debug)
{
 int err, ret;

 err = btintel_enter_mfg(hdev);
 if (err)
  return err;

 ret = btintel_set_event_mask(hdev, debug);

 err = btintel_exit_mfg(hdev, 0, 0);
 if (err)
  return err;

 return ret;
}
