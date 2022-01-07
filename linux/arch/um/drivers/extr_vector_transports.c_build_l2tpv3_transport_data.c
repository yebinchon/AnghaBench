
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_private {int header_size; int rx_header_size; int parsed; int * verify_header; int * form_header; struct uml_l2tpv3_data* transport_data; } ;
struct uml_l2tpv3_data {int cookie_offset; int counter_offset; int ipv6; int cookie_is_64; int cookie; int has_counter; int pin_counter; int udp; scalar_t__ session_offset; void* tx_cookie; void* rx_cookie; void* rx_session; void* tx_session; scalar_t__ counter; } ;
struct iphdr {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* cpu_to_be32 (unsigned long) ;
 void* cpu_to_be64 (unsigned long) ;
 scalar_t__ get_uint_param (int ,char*,int*) ;
 scalar_t__ get_ulong_param (int ,char*,unsigned long*) ;
 struct uml_l2tpv3_data* kmalloc (int,int ) ;
 int l2tpv3_form_header ;
 int l2tpv3_verify_header ;

__attribute__((used)) static int build_l2tpv3_transport_data(struct vector_private *vp)
{

 struct uml_l2tpv3_data *td;
 int temp_int, temp_rxs, temp_txs;
 unsigned long temp_rx;
 unsigned long temp_tx;

 vp->transport_data = kmalloc(
  sizeof(struct uml_l2tpv3_data), GFP_KERNEL);

 if (vp->transport_data == ((void*)0))
  return -ENOMEM;

 td = vp->transport_data;

 vp->form_header = &l2tpv3_form_header;
 vp->verify_header = &l2tpv3_verify_header;
 td->counter = 0;

 vp->header_size = 4;
 td->session_offset = 0;
 td->cookie_offset = 4;
 td->counter_offset = 4;


 td->ipv6 = 0;
 if (get_uint_param(vp->parsed, "v6", &temp_int)) {
  if (temp_int > 0)
   td->ipv6 = 1;
 }

 if (get_uint_param(vp->parsed, "rx_session", &temp_rxs)) {
  if (get_uint_param(vp->parsed, "tx_session", &temp_txs)) {
   td->tx_session = cpu_to_be32(temp_txs);
   td->rx_session = cpu_to_be32(temp_rxs);
  } else {
   return -EINVAL;
  }
 } else {
  return -EINVAL;
 }

 td->cookie_is_64 = 0;
 if (get_uint_param(vp->parsed, "cookie64", &temp_int)) {
  if (temp_int > 0)
   td->cookie_is_64 = 1;
 }
 td->cookie = 0;
 if (get_ulong_param(vp->parsed, "rx_cookie", &temp_rx)) {
  if (get_ulong_param(vp->parsed, "tx_cookie", &temp_tx)) {
   td->cookie = 1;
   if (td->cookie_is_64) {
    td->rx_cookie = cpu_to_be64(temp_rx);
    td->tx_cookie = cpu_to_be64(temp_tx);
    vp->header_size += 8;
    td->counter_offset += 8;
   } else {
    td->rx_cookie = cpu_to_be32(temp_rx);
    td->tx_cookie = cpu_to_be32(temp_tx);
    vp->header_size += 4;
    td->counter_offset += 4;
   }
  } else {
   return -EINVAL;
  }
 }

 td->has_counter = 0;
 if (get_uint_param(vp->parsed, "counter", &temp_int)) {
  if (temp_int > 0) {
   td->has_counter = 1;
   vp->header_size += 4;
   if (get_uint_param(
    vp->parsed, "pin_counter", &temp_int)) {
    if (temp_int > 0)
     td->pin_counter = 1;
   }
  }
 }

 if (get_uint_param(vp->parsed, "udp", &temp_int)) {
  if (temp_int > 0) {
   td->udp = 1;
   vp->header_size += 4;
   td->counter_offset += 4;
   td->session_offset += 4;
   td->cookie_offset += 4;
  }
 }

 vp->rx_header_size = vp->header_size;
 if ((!td->ipv6) && (!td->udp))
  vp->rx_header_size += sizeof(struct iphdr);

 return 0;
}
