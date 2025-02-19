
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_uart {TYPE_1__* hdev; struct h5* priv; } ;
struct h5 {scalar_t__ rx_pending; int (* rx_func ) (struct hci_uart*,unsigned char const) ;} ;
struct TYPE_2__ {int name; } ;


 int BT_DBG (char*,int ,scalar_t__,int) ;
 int BT_ERR (char*) ;
 unsigned char const SLIP_DELIMITER ;
 int h5_reset_rx (struct h5*) ;
 int h5_unslip_one_byte (struct h5*,unsigned char const) ;
 int stub1 (struct hci_uart*,unsigned char const) ;

__attribute__((used)) static int h5_recv(struct hci_uart *hu, const void *data, int count)
{
 struct h5 *h5 = hu->priv;
 const unsigned char *ptr = data;

 BT_DBG("%s pending %zu count %d", hu->hdev->name, h5->rx_pending,
        count);

 while (count > 0) {
  int processed;

  if (h5->rx_pending > 0) {
   if (*ptr == SLIP_DELIMITER) {
    BT_ERR("Too short H5 packet");
    h5_reset_rx(h5);
    continue;
   }

   h5_unslip_one_byte(h5, *ptr);

   ptr++; count--;
   continue;
  }

  processed = h5->rx_func(hu, *ptr);
  if (processed < 0)
   return processed;

  ptr += processed;
  count -= processed;
 }

 return 0;
}
