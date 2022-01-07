
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hci_dev {int send; int flush; int close; int open; int bus; } ;
struct dtl1_info {int ri_latch; struct hci_dev* hdev; int lock; TYPE_2__* p_dev; int tx_state; int * rx_skb; int rx_count; int rx_state; int txq; } ;
struct TYPE_4__ {TYPE_1__** resource; int dev; } ;
struct TYPE_3__ {unsigned int start; } ;


 int BT_ERR (char*) ;
 int ENODEV ;
 int ENOMEM ;
 int HCI_PCCARD ;
 int NSHL ;
 int RECV_WAIT_NSH ;
 int SET_HCIDEV_DEV (struct hci_dev*,int *) ;
 scalar_t__ UART_IER ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 int UART_IER_THRI ;
 scalar_t__ UART_LCR ;
 int UART_LCR_WLEN8 ;
 scalar_t__ UART_MCR ;
 int UART_MCR_DTR ;
 int UART_MCR_OUT2 ;
 int UART_MCR_RTS ;
 scalar_t__ UART_MSR ;
 int UART_MSR_RI ;
 int XMIT_WAITING ;
 int dtl1_hci_close ;
 int dtl1_hci_flush ;
 int dtl1_hci_open ;
 int dtl1_hci_send_frame ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 scalar_t__ hci_register_dev (struct hci_dev*) ;
 int hci_set_drvdata (struct hci_dev*,struct dtl1_info*) ;
 int inb (scalar_t__) ;
 int msleep (int) ;
 int outb (int,scalar_t__) ;
 int set_bit (int ,int *) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dtl1_open(struct dtl1_info *info)
{
 unsigned long flags;
 unsigned int iobase = info->p_dev->resource[0]->start;
 struct hci_dev *hdev;

 spin_lock_init(&(info->lock));

 skb_queue_head_init(&(info->txq));

 info->rx_state = RECV_WAIT_NSH;
 info->rx_count = NSHL;
 info->rx_skb = ((void*)0);

 set_bit(XMIT_WAITING, &(info->tx_state));


 hdev = hci_alloc_dev();
 if (!hdev) {
  BT_ERR("Can't allocate HCI device");
  return -ENOMEM;
 }

 info->hdev = hdev;

 hdev->bus = HCI_PCCARD;
 hci_set_drvdata(hdev, info);
 SET_HCIDEV_DEV(hdev, &info->p_dev->dev);

 hdev->open = dtl1_hci_open;
 hdev->close = dtl1_hci_close;
 hdev->flush = dtl1_hci_flush;
 hdev->send = dtl1_hci_send_frame;

 spin_lock_irqsave(&(info->lock), flags);


 outb(0, iobase + UART_MCR);


 outb(0, iobase + UART_IER);


 outb(UART_LCR_WLEN8, iobase + UART_LCR);
 outb((UART_MCR_DTR | UART_MCR_RTS | UART_MCR_OUT2), iobase + UART_MCR);

 info->ri_latch = inb(info->p_dev->resource[0]->start + UART_MSR)
    & UART_MSR_RI;


 outb(UART_IER_RLSI | UART_IER_RDI | UART_IER_THRI, iobase + UART_IER);

 spin_unlock_irqrestore(&(info->lock), flags);


 msleep(2000);


 if (hci_register_dev(hdev) < 0) {
  BT_ERR("Can't register HCI device");
  info->hdev = ((void*)0);
  hci_free_dev(hdev);
  return -ENODEV;
 }

 return 0;
}
