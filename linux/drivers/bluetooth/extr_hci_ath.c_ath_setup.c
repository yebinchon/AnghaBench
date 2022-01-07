
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_uart {TYPE_1__* hdev; } ;
struct TYPE_2__ {int set_bdaddr; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int ath_set_bdaddr ;

__attribute__((used)) static int ath_setup(struct hci_uart *hu)
{
 BT_DBG("hu %p", hu);

 hu->hdev->set_bdaddr = ath_set_bdaddr;

 return 0;
}
