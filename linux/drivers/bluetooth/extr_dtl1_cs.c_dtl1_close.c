
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hci_dev {int dummy; } ;
struct dtl1_info {int lock; struct hci_dev* hdev; TYPE_2__* p_dev; } ;
struct TYPE_4__ {TYPE_1__** resource; } ;
struct TYPE_3__ {unsigned int start; } ;


 int ENODEV ;
 scalar_t__ UART_IER ;
 scalar_t__ UART_MCR ;
 int dtl1_hci_close (struct hci_dev*) ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_unregister_dev (struct hci_dev*) ;
 int outb (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dtl1_close(struct dtl1_info *info)
{
 unsigned long flags;
 unsigned int iobase = info->p_dev->resource[0]->start;
 struct hci_dev *hdev = info->hdev;

 if (!hdev)
  return -ENODEV;

 dtl1_hci_close(hdev);

 spin_lock_irqsave(&(info->lock), flags);


 outb(0, iobase + UART_MCR);


 outb(0, iobase + UART_IER);

 spin_unlock_irqrestore(&(info->lock), flags);

 hci_unregister_dev(hdev);
 hci_free_dev(hdev);

 return 0;
}
