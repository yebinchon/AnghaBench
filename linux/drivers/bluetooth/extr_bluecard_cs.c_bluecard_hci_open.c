
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hci_dev {int dummy; } ;
struct bluecard_info {int hw_state; TYPE_2__* p_dev; } ;
struct TYPE_4__ {TYPE_1__** resource; } ;
struct TYPE_3__ {unsigned int start; } ;


 int CARD_HAS_PCCARD_ID ;
 int DEFAULT_BAUD_RATE ;
 int bluecard_hci_set_baud_rate (struct hci_dev*,int ) ;
 struct bluecard_info* hci_get_drvdata (struct hci_dev*) ;
 int outb (int,unsigned int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int bluecard_hci_open(struct hci_dev *hdev)
{
 struct bluecard_info *info = hci_get_drvdata(hdev);
 unsigned int iobase = info->p_dev->resource[0]->start;

 if (test_bit(CARD_HAS_PCCARD_ID, &(info->hw_state)))
  bluecard_hci_set_baud_rate(hdev, DEFAULT_BAUD_RATE);


 outb(0x08 | 0x20, iobase + 0x30);

 return 0;
}
