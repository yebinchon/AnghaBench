
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hci_dev {int dummy; } ;
struct bluecard_info {int ctrl_reg; int hw_state; struct hci_dev* hdev; TYPE_2__* p_dev; } ;
struct TYPE_4__ {TYPE_1__** resource; } ;
struct TYPE_3__ {unsigned int start; } ;


 int CARD_READY ;
 int ENODEV ;
 unsigned int REG_CONTROL ;
 int REG_CONTROL_BT_RESET ;
 int REG_CONTROL_CARD_RESET ;
 int bluecard_hci_close (struct hci_dev*) ;
 int clear_bit (int ,int *) ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_unregister_dev (struct hci_dev*) ;
 int outb (int,unsigned int) ;

__attribute__((used)) static int bluecard_close(struct bluecard_info *info)
{
 unsigned int iobase = info->p_dev->resource[0]->start;
 struct hci_dev *hdev = info->hdev;

 if (!hdev)
  return -ENODEV;

 bluecard_hci_close(hdev);

 clear_bit(CARD_READY, &(info->hw_state));


 info->ctrl_reg = REG_CONTROL_BT_RESET | REG_CONTROL_CARD_RESET;
 outb(info->ctrl_reg, iobase + REG_CONTROL);


 outb(0x80, iobase + 0x30);

 hci_unregister_dev(hdev);
 hci_free_dev(hdev);

 return 0;
}
