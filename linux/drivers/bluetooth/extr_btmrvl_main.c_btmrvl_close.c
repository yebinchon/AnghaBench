
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_dev {int dummy; } ;
struct btmrvl_private {TYPE_1__* adapter; } ;
struct TYPE_2__ {int tx_queue; } ;


 struct btmrvl_private* hci_get_drvdata (struct hci_dev*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int btmrvl_close(struct hci_dev *hdev)
{
 struct btmrvl_private *priv = hci_get_drvdata(hdev);

 skb_queue_purge(&priv->adapter->tx_queue);

 return 0;
}
