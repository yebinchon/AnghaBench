
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_uart {struct h5* priv; } ;
struct h5 {int rx_pending; int rx_func; TYPE_1__* rx_skb; } ;
struct TYPE_2__ {unsigned char* data; } ;


 scalar_t__ H5_HDR_CRC (unsigned char const*) ;
 int h5_complete_rx_pkt (struct hci_uart*) ;
 int h5_rx_crc ;

__attribute__((used)) static int h5_rx_payload(struct hci_uart *hu, unsigned char c)
{
 struct h5 *h5 = hu->priv;
 const unsigned char *hdr = h5->rx_skb->data;

 if (H5_HDR_CRC(hdr)) {
  h5->rx_func = h5_rx_crc;
  h5->rx_pending = 2;
 } else {
  h5_complete_rx_pkt(hu);
 }

 return 0;
}
