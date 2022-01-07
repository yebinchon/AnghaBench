
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct vector_private {struct uml_l2tpv3_data* transport_data; } ;
struct uml_l2tpv3_data {int session_offset; int cookie_offset; int counter_offset; int counter; scalar_t__ pin_counter; scalar_t__ has_counter; scalar_t__ tx_cookie; scalar_t__ cookie_is_64; scalar_t__ cookie; scalar_t__ tx_session; scalar_t__ udp; } ;
struct sk_buff {int dummy; } ;


 int L2TPV3_DATA_PACKET ;
 scalar_t__ cpu_to_be32 (int ) ;

__attribute__((used)) static int l2tpv3_form_header(uint8_t *header,
 struct sk_buff *skb, struct vector_private *vp)
{
 struct uml_l2tpv3_data *td = vp->transport_data;
 uint32_t *counter;

 if (td->udp)
  *(uint32_t *) header = cpu_to_be32(L2TPV3_DATA_PACKET);
 (*(uint32_t *) (header + td->session_offset)) = td->tx_session;

 if (td->cookie) {
  if (td->cookie_is_64)
   (*(uint64_t *)(header + td->cookie_offset)) =
    td->tx_cookie;
  else
   (*(uint32_t *)(header + td->cookie_offset)) =
    td->tx_cookie;
 }
 if (td->has_counter) {
  counter = (uint32_t *)(header + td->counter_offset);
  if (td->pin_counter) {
   *counter = 0;
  } else {
   td->counter++;
   *counter = cpu_to_be32(td->counter);
  }
 }
 return 0;
}
