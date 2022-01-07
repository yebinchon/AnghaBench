
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct virtio_net_hdr {int dummy; } ;
struct vector_private {int dummy; } ;
struct sk_buff {int dummy; } ;


 int virtio_legacy_is_little_endian () ;
 int virtio_net_hdr_from_skb (struct sk_buff*,struct virtio_net_hdr*,int ,int,int ) ;

__attribute__((used)) static int raw_form_header(uint8_t *header,
  struct sk_buff *skb, struct vector_private *vp)
{
 struct virtio_net_hdr *vheader = (struct virtio_net_hdr *) header;

 virtio_net_hdr_from_skb(
  skb,
  vheader,
  virtio_legacy_is_little_endian(),
  0,
  0
 );

 return 0;
}
