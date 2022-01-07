
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {struct ath_struct* priv; } ;
struct ath_struct {int ctxtsw; struct hci_uart* hu; int txq; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int ath_hci_uart_work ;
 int hci_uart_has_flow_control (struct hci_uart*) ;
 struct ath_struct* kzalloc (int,int ) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int ath_open(struct hci_uart *hu)
{
 struct ath_struct *ath;

 BT_DBG("hu %p", hu);

 if (!hci_uart_has_flow_control(hu))
  return -EOPNOTSUPP;

 ath = kzalloc(sizeof(*ath), GFP_KERNEL);
 if (!ath)
  return -ENOMEM;

 skb_queue_head_init(&ath->txq);

 hu->priv = ath;
 ath->hu = hu;

 INIT_WORK(&ath->ctxtsw, ath_hci_uart_work);

 return 0;
}
