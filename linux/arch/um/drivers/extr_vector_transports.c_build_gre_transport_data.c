
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vector_private {int header_size; int rx_header_size; int parsed; int * verify_header; int * form_header; struct uml_gre_data* transport_data; } ;
struct TYPE_2__ {int header; int arptype; } ;
struct uml_gre_data {int sequence; int key_offset; int sequence_offset; int checksum_offset; int ipv6; int key; int has_sequence; int pin_sequence; TYPE_1__ expected_header; void* tx_key; void* rx_key; } ;
struct iphdr {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GRE_IRB ;
 int GRE_MODE_KEY ;
 int GRE_MODE_SEQUENCE ;
 void* cpu_to_be32 (int) ;
 scalar_t__ get_uint_param (int ,char*,int*) ;
 int gre_form_header ;
 int gre_verify_header ;
 struct uml_gre_data* kmalloc (int,int ) ;

__attribute__((used)) static int build_gre_transport_data(struct vector_private *vp)
{
 struct uml_gre_data *td;
 int temp_int;
 int temp_rx;
 int temp_tx;

 vp->transport_data = kmalloc(sizeof(struct uml_gre_data), GFP_KERNEL);
 if (vp->transport_data == ((void*)0))
  return -ENOMEM;
 td = vp->transport_data;
 td->sequence = 0;

 td->expected_header.arptype = GRE_IRB;
 td->expected_header.header = 0;

 vp->form_header = &gre_form_header;
 vp->verify_header = &gre_verify_header;
 vp->header_size = 4;
 td->key_offset = 4;
 td->sequence_offset = 4;
 td->checksum_offset = 4;

 td->ipv6 = 0;
 if (get_uint_param(vp->parsed, "v6", &temp_int)) {
  if (temp_int > 0)
   td->ipv6 = 1;
 }
 td->key = 0;
 if (get_uint_param(vp->parsed, "rx_key", &temp_rx)) {
  if (get_uint_param(vp->parsed, "tx_key", &temp_tx)) {
   td->key = 1;
   td->expected_header.header |= GRE_MODE_KEY;
   td->rx_key = cpu_to_be32(temp_rx);
   td->tx_key = cpu_to_be32(temp_tx);
   vp->header_size += 4;
   td->sequence_offset += 4;
  } else {
   return -EINVAL;
  }
 }

 td->sequence = 0;
 if (get_uint_param(vp->parsed, "sequence", &temp_int)) {
  if (temp_int > 0) {
   vp->header_size += 4;
   td->has_sequence = 1;
   td->expected_header.header |= GRE_MODE_SEQUENCE;
   if (get_uint_param(
    vp->parsed, "pin_sequence", &temp_int)) {
    if (temp_int > 0)
     td->pin_sequence = 1;
   }
  }
 }
 vp->rx_header_size = vp->header_size;
 if (!td->ipv6)
  vp->rx_header_size += sizeof(struct iphdr);
 return 0;
}
