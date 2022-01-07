
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int last_query_sent_time; } ;


 int precise_now ;

int sqlc_init_outbound (struct connection *c) {
  c->last_query_sent_time = precise_now;
  return 0;
}
