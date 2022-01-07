
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_data {int flags; struct hci_uart* hu; int busy_work; int txq; } ;
struct hci_uart {struct intel_data* priv; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int STATE_BOOTING ;
 int hci_uart_has_flow_control (struct hci_uart*) ;
 int intel_busy_work ;
 int intel_set_power (struct hci_uart*,int) ;
 struct intel_data* kzalloc (int,int ) ;
 int set_bit (int ,int *) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int intel_open(struct hci_uart *hu)
{
 struct intel_data *intel;

 BT_DBG("hu %p", hu);

 if (!hci_uart_has_flow_control(hu))
  return -EOPNOTSUPP;

 intel = kzalloc(sizeof(*intel), GFP_KERNEL);
 if (!intel)
  return -ENOMEM;

 skb_queue_head_init(&intel->txq);
 INIT_WORK(&intel->busy_work, intel_busy_work);

 intel->hu = hu;

 hu->priv = intel;

 if (!intel_set_power(hu, 1))
  set_bit(STATE_BOOTING, &intel->flags);

 return 0;
}
