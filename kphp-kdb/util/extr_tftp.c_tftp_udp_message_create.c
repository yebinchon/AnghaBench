
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_message {scalar_t__ next; int raw; } ;


 int assert (int) ;
 int hexdump (scalar_t__,scalar_t__) ;
 struct udp_message* malloc (int) ;
 scalar_t__ msg_out ;
 int rwm_create (int *,scalar_t__,int) ;
 int sent_ack_packets ;
 int sent_data_packets ;
 int sent_error_packets ;
 int sent_oack_packets ;
 int sent_rrq_packets ;



 int tftp_get_response_packet_type () ;


 int tftp_udp_sent_bytes ;
 int tftp_udp_sent_packets ;
 int verbosity ;

__attribute__((used)) static struct udp_message *tftp_udp_message_create (int len) {
  switch (tftp_get_response_packet_type ()) {
  case 128:
    sent_rrq_packets++;
    break;
  case 132:
    sent_ack_packets++;
    break;
  case 131:
    sent_data_packets++;
    break;
  case 129:
    sent_oack_packets++;
    break;
  case 130:
    sent_error_packets++;
    break;
  }
  tftp_udp_sent_packets++;
  tftp_udp_sent_bytes += len;
  if (verbosity >= 3) {
    hexdump (msg_out, msg_out + len);
  }
  struct udp_message *a = malloc (sizeof (struct udp_message));
  assert (rwm_create (&a->raw, msg_out, len) == len);
  a->next = 0;
  return a;
}
