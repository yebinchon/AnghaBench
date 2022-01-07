
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {struct ag6xx_data* priv; } ;
struct ag6xx_data {int txq; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct ag6xx_data* kzalloc (int,int ) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int ag6xx_open(struct hci_uart *hu)
{
 struct ag6xx_data *ag6xx;

 BT_DBG("hu %p", hu);

 ag6xx = kzalloc(sizeof(*ag6xx), GFP_KERNEL);
 if (!ag6xx)
  return -ENOMEM;

 skb_queue_head_init(&ag6xx->txq);

 hu->priv = ag6xx;
 return 0;
}
