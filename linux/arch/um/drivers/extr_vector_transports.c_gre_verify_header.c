
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct vector_private {int dev; struct uml_gre_data* transport_data; } ;
struct uml_gre_data {int key_offset; scalar_t__ rx_key; scalar_t__ key; int expected_header; int ipv6; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int dummy; } ;


 scalar_t__ net_ratelimit () ;
 int netdev_err (int ,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int gre_verify_header(
 uint8_t *header, struct sk_buff *skb, struct vector_private *vp)
{

 uint32_t key;
 struct uml_gre_data *td = vp->transport_data;

 if (!td->ipv6)
  header += sizeof(struct iphdr) ;

 if (*((uint32_t *) header) != *((uint32_t *) &td->expected_header)) {
  if (net_ratelimit())
   netdev_err(vp->dev, "header type disagreement, expecting %0x, got %0x",
    *((uint32_t *) &td->expected_header),
    *((uint32_t *) header)
   );
  return -1;
 }

 if (td->key) {
  key = (*(uint32_t *)(header + td->key_offset));
  if (key != td->rx_key) {
   if (net_ratelimit())
    netdev_err(vp->dev, "unknown key id %0x, expecting %0x",
      key, td->rx_key);
   return -1;
  }
 }
 return 0;
}
