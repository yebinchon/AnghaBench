
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct bluecard_info {int ctrl_reg; int tx_state; TYPE_3__* hdev; int txq; TYPE_4__* p_dev; } ;
struct TYPE_8__ {TYPE_1__** resource; } ;
struct TYPE_6__ {int byte_tx; } ;
struct TYPE_7__ {TYPE_2__ stat; } ;
struct TYPE_5__ {unsigned int start; } ;


 int BT_ERR (char*) ;
 int DECLARE_WAIT_QUEUE_HEAD_ONSTACK (int ) ;
 int DEFINE_WAIT (int ) ;




 scalar_t__ REG_COMMAND ;
 unsigned char REG_COMMAND_TX_BUF_ONE ;
 unsigned char REG_COMMAND_TX_BUF_TWO ;
 scalar_t__ REG_CONTROL ;
 unsigned char REG_CONTROL_BAUD_RATE_115200 ;
 unsigned char REG_CONTROL_BAUD_RATE_230400 ;
 unsigned char REG_CONTROL_BAUD_RATE_460800 ;
 unsigned char REG_CONTROL_BAUD_RATE_57600 ;
 int REG_CONTROL_RTS ;
 unsigned long XMIT_BUFFER_NUMBER ;
 unsigned long XMIT_BUF_ONE_READY ;
 unsigned long XMIT_BUF_TWO_READY ;
 unsigned long XMIT_SENDING ;
 unsigned long XMIT_SENDING_READY ;
 unsigned long XMIT_WAKEUP ;
 int bluecard_enable_activity_led (struct bluecard_info*) ;
 int bluecard_write (unsigned int,unsigned int,int ,int) ;
 int change_bit (unsigned long,int *) ;
 int clear_bit (unsigned long,int *) ;
 int hci_skb_pkt_type (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int mdelay (int) ;
 int outb (int,scalar_t__) ;
 int outb_p (unsigned char,scalar_t__) ;
 int pcmcia_dev_present (TYPE_4__*) ;
 int set_bit (unsigned long,int *) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 scalar_t__ test_and_set_bit (unsigned long,int *) ;
 scalar_t__ test_bit (unsigned long,int *) ;
 int wait ;
 int wq ;

__attribute__((used)) static void bluecard_write_wakeup(struct bluecard_info *info)
{
 if (!info) {
  BT_ERR("Unknown device");
  return;
 }

 if (!test_bit(XMIT_SENDING_READY, &(info->tx_state)))
  return;

 if (test_and_set_bit(XMIT_SENDING, &(info->tx_state))) {
  set_bit(XMIT_WAKEUP, &(info->tx_state));
  return;
 }

 do {
  unsigned int iobase = info->p_dev->resource[0]->start;
  unsigned int offset;
  unsigned char command;
  unsigned long ready_bit;
  register struct sk_buff *skb;
  int len;

  clear_bit(XMIT_WAKEUP, &(info->tx_state));

  if (!pcmcia_dev_present(info->p_dev))
   return;

  if (test_bit(XMIT_BUFFER_NUMBER, &(info->tx_state))) {
   if (!test_bit(XMIT_BUF_TWO_READY, &(info->tx_state)))
    break;
   offset = 0x10;
   command = REG_COMMAND_TX_BUF_TWO;
   ready_bit = XMIT_BUF_TWO_READY;
  } else {
   if (!test_bit(XMIT_BUF_ONE_READY, &(info->tx_state)))
    break;
   offset = 0x00;
   command = REG_COMMAND_TX_BUF_ONE;
   ready_bit = XMIT_BUF_ONE_READY;
  }

  skb = skb_dequeue(&(info->txq));
  if (!skb)
   break;

  if (hci_skb_pkt_type(skb) & 0x80) {

   info->ctrl_reg |= REG_CONTROL_RTS;
   outb(info->ctrl_reg, iobase + REG_CONTROL);
  }


  bluecard_enable_activity_led(info);


  len = bluecard_write(iobase, offset, skb->data, skb->len);


  outb_p(command, iobase + REG_COMMAND);


  clear_bit(ready_bit, &(info->tx_state));

  if (hci_skb_pkt_type(skb) & 0x80) {
   DECLARE_WAIT_QUEUE_HEAD_ONSTACK(wq);
   DEFINE_WAIT(wait);

   unsigned char baud_reg;

   switch (hci_skb_pkt_type(skb)) {
   case 129:
    baud_reg = REG_CONTROL_BAUD_RATE_460800;
    break;
   case 130:
    baud_reg = REG_CONTROL_BAUD_RATE_230400;
    break;
   case 131:
    baud_reg = REG_CONTROL_BAUD_RATE_115200;
    break;
   case 128:

   default:
    baud_reg = REG_CONTROL_BAUD_RATE_57600;
    break;
   }


   mdelay(100);


   info->ctrl_reg &= ~0x03;
   info->ctrl_reg |= baud_reg;
   outb(info->ctrl_reg, iobase + REG_CONTROL);


   info->ctrl_reg &= ~REG_CONTROL_RTS;
   outb(info->ctrl_reg, iobase + REG_CONTROL);


   mdelay(1000);
  }

  if (len == skb->len) {
   kfree_skb(skb);
  } else {
   skb_pull(skb, len);
   skb_queue_head(&(info->txq), skb);
  }

  info->hdev->stat.byte_tx += len;


  change_bit(XMIT_BUFFER_NUMBER, &(info->tx_state));

 } while (test_bit(XMIT_WAKEUP, &(info->tx_state)));

 clear_bit(XMIT_SENDING, &(info->tx_state));
}
