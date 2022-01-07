
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtio_net_hdr {int dummy; } ;
struct vector_private {int header_size; int rx_header_size; TYPE_2__* dev; int * verify_header; int * form_header; TYPE_1__* fds; } ;
struct TYPE_4__ {int hw_features; int features; } ;
struct TYPE_3__ {int tx_fd; } ;


 int NETIF_F_GRO ;
 int NETIF_F_GSO ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_TSO ;
 int netdev_info (TYPE_2__*,char*) ;
 int raw_form_header ;
 int raw_verify_header ;
 scalar_t__ uml_tap_enable_vnet_headers (int ) ;

__attribute__((used)) static int build_tap_transport_data(struct vector_private *vp)
{

 if (uml_tap_enable_vnet_headers(vp->fds->tx_fd)) {
  vp->form_header = &raw_form_header;
  vp->verify_header = &raw_verify_header;
  vp->header_size = sizeof(struct virtio_net_hdr);
  vp->rx_header_size = sizeof(struct virtio_net_hdr);
  vp->dev->hw_features |=
   (NETIF_F_TSO | NETIF_F_GSO | NETIF_F_GRO);
  vp->dev->features |=
   (NETIF_F_RXCSUM | NETIF_F_HW_CSUM |
    NETIF_F_TSO | NETIF_F_GSO | NETIF_F_GRO);
  netdev_info(
   vp->dev,
   "tap: using vnet headers for tso and tx/rx checksum"
  );
  return 0;
 }
 return -1;
}
