
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hci_dev {int dummy; } ;
struct bluecard_info {int timer; TYPE_2__* p_dev; } ;
struct TYPE_4__ {TYPE_1__** resource; } ;
struct TYPE_3__ {unsigned int start; } ;


 int bluecard_hci_flush (struct hci_dev*) ;
 int del_timer_sync (int *) ;
 struct bluecard_info* hci_get_drvdata (struct hci_dev*) ;
 int outb (int,unsigned int) ;

__attribute__((used)) static int bluecard_hci_close(struct hci_dev *hdev)
{
 struct bluecard_info *info = hci_get_drvdata(hdev);
 unsigned int iobase = info->p_dev->resource[0]->start;

 bluecard_hci_flush(hdev);


 del_timer_sync(&(info->timer));


 outb(0x00, iobase + 0x30);

 return 0;
}
