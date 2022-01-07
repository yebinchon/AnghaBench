
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcc_data {int crypto_flags; scalar_t__ in_packet_num; } ;
struct connection {int last_query_sent_time; } ;


 struct rpcc_data* RPCC_DATA (struct connection*) ;
 int precise_now ;

int rpcc_init_outbound_nohs (struct connection *c) {
  struct rpcc_data *D = RPCC_DATA(c);
  c->last_query_sent_time = precise_now;

  D->in_packet_num = 0;
  D->crypto_flags = 1;

  return 0;
}
