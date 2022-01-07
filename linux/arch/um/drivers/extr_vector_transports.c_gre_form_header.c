
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct vector_private {struct uml_gre_data* transport_data; } ;
struct uml_gre_data {int key_offset; int sequence_offset; int sequence; scalar_t__ pin_sequence; scalar_t__ has_sequence; scalar_t__ tx_key; scalar_t__ key; int expected_header; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ cpu_to_be32 (int ) ;

__attribute__((used)) static int gre_form_header(uint8_t *header,
  struct sk_buff *skb, struct vector_private *vp)
{
 struct uml_gre_data *td = vp->transport_data;
 uint32_t *sequence;
 *((uint32_t *) header) = *((uint32_t *) &td->expected_header);
 if (td->key)
  (*(uint32_t *) (header + td->key_offset)) = td->tx_key;
 if (td->has_sequence) {
  sequence = (uint32_t *)(header + td->sequence_offset);
  if (td->pin_sequence)
   *sequence = 0;
  else
   *sequence = cpu_to_be32(++td->sequence);
 }
 return 0;
}
