
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hts_data {int query_flags; int * extra; } ;
struct connection {scalar_t__ status; int parse_state; int flags; scalar_t__ pending_queries; scalar_t__ generation; } ;


 int C_REPARSE ;
 struct hts_data* HTS_DATA (struct connection*) ;
 int QF_KEEPALIVE ;
 int assert (int) ;
 int clear_connection_timeout (struct connection*) ;
 scalar_t__ conn_generation ;
 scalar_t__ conn_wait_net ;
 scalar_t__ conn_write_close ;

void hts_at_query_end (struct connection *c, int check_keep_alive) {
  struct hts_data *D = HTS_DATA (c);

  clear_connection_timeout (c);
  c->generation = ++conn_generation;
  c->pending_queries = 0;
  D->extra = ((void*)0);
  if (check_keep_alive && !(D->query_flags & QF_KEEPALIVE)) {
    c->status = conn_write_close;
    c->parse_state = -1;
  } else {
    c->flags |= C_REPARSE;
  }
  assert (c->status != conn_wait_net);
}
