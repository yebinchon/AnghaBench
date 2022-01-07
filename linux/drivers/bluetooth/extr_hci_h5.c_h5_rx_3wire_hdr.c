
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hci_uart {TYPE_2__* hdev; struct h5* priv; } ;
struct h5 {scalar_t__ tx_ack; scalar_t__ state; int rx_pending; int rx_func; TYPE_1__* rx_skb; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {unsigned char* data; } ;


 int BT_DBG (char*,int ,scalar_t__,int ,int ,scalar_t__,scalar_t__,int ) ;
 int BT_ERR (char*,...) ;
 scalar_t__ H5_ACTIVE ;
 int H5_HDR_ACK (unsigned char const*) ;
 int H5_HDR_CRC (unsigned char const*) ;
 int H5_HDR_LEN (unsigned char const*) ;
 scalar_t__ H5_HDR_PKT_TYPE (unsigned char const*) ;
 scalar_t__ H5_HDR_RELIABLE (unsigned char const*) ;
 scalar_t__ H5_HDR_SEQ (unsigned char const*) ;
 scalar_t__ HCI_3WIRE_LINK_PKT ;
 int h5_reset_rx (struct h5*) ;
 int h5_rx_payload ;

__attribute__((used)) static int h5_rx_3wire_hdr(struct hci_uart *hu, unsigned char c)
{
 struct h5 *h5 = hu->priv;
 const unsigned char *hdr = h5->rx_skb->data;

 BT_DBG("%s rx: seq %u ack %u crc %u rel %u type %u len %u",
        hu->hdev->name, H5_HDR_SEQ(hdr), H5_HDR_ACK(hdr),
        H5_HDR_CRC(hdr), H5_HDR_RELIABLE(hdr), H5_HDR_PKT_TYPE(hdr),
        H5_HDR_LEN(hdr));

 if (((hdr[0] + hdr[1] + hdr[2] + hdr[3]) & 0xff) != 0xff) {
  BT_ERR("Invalid header checksum");
  h5_reset_rx(h5);
  return 0;
 }

 if (H5_HDR_RELIABLE(hdr) && H5_HDR_SEQ(hdr) != h5->tx_ack) {
  BT_ERR("Out-of-order packet arrived (%u != %u)",
         H5_HDR_SEQ(hdr), h5->tx_ack);
  h5_reset_rx(h5);
  return 0;
 }

 if (h5->state != H5_ACTIVE &&
     H5_HDR_PKT_TYPE(hdr) != HCI_3WIRE_LINK_PKT) {
  BT_ERR("Non-link packet received in non-active state");
  h5_reset_rx(h5);
  return 0;
 }

 h5->rx_func = h5_rx_payload;
 h5->rx_pending = H5_HDR_LEN(hdr);

 return 0;
}
