
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {struct bcsp_struct* priv; } ;
struct bcsp_struct {int use_crc; int rx_state; int tbcsp; int unrel; int rel; int unack; struct hci_uart* hu; } ;


 int BCSP_W4_PKT_DELIMITER ;
 int BT_DBG (char*,struct hci_uart*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bcsp_timed_event ;
 struct bcsp_struct* kzalloc (int,int ) ;
 int skb_queue_head_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 scalar_t__ txcrc ;

__attribute__((used)) static int bcsp_open(struct hci_uart *hu)
{
 struct bcsp_struct *bcsp;

 BT_DBG("hu %p", hu);

 bcsp = kzalloc(sizeof(*bcsp), GFP_KERNEL);
 if (!bcsp)
  return -ENOMEM;

 hu->priv = bcsp;
 bcsp->hu = hu;
 skb_queue_head_init(&bcsp->unack);
 skb_queue_head_init(&bcsp->rel);
 skb_queue_head_init(&bcsp->unrel);

 timer_setup(&bcsp->tbcsp, bcsp_timed_event, 0);

 bcsp->rx_state = BCSP_W4_PKT_DELIMITER;

 if (txcrc)
  bcsp->use_crc = 1;

 return 0;
}
