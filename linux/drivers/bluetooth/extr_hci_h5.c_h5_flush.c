
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {int dummy; } ;


 int BT_DBG (char*,struct hci_uart*) ;

__attribute__((used)) static int h5_flush(struct hci_uart *hu)
{
 BT_DBG("hu %p", hu);
 return 0;
}
