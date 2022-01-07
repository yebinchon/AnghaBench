
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int last_query_sent_time; scalar_t__ Tmp; int Out; } ;
struct conn_target {int custom_field; } ;
struct conn_query {int custom_type; } ;
struct TYPE_2__ {scalar_t__ get_timeout; } ;


 TYPE_1__* CC ;
 scalar_t__ MAX_CLUSTER_SERVERS ;
 int accumulate_query_timeout (struct connection*,scalar_t__) ;
 int assert (int) ;
 struct conn_query* create_query (struct connection*,struct connection*,scalar_t__) ;
 int flush_output (struct connection*) ;
 struct connection** get_connection ;
 struct conn_target** get_target ;
 struct connection* get_target_connection (struct conn_target*) ;
 scalar_t__ get_targets ;
 int precise_now ;
 int write_out (int *,char*,int) ;

struct connection *get_target_conn_simple (struct conn_target *S, struct connection *c) {
  struct connection *d;
  int x;
  if (S->custom_field) {
    x = S->custom_field;
    if (x < 0) {
      x = -x;
    }
    x--;
    assert ((unsigned) x < (unsigned) get_targets);
    assert (get_target[x] == S);
    d = get_connection[x];
    if (S->custom_field > 0) {
      S->custom_field = - S->custom_field;
      write_out (&d->Out, "\r\n", 2);

      struct conn_query *Q = create_query (d, c, CC->get_timeout + 0.2);
      if ( c->Tmp) {
        Q->custom_type |= 0x1000;
      }
      flush_output (d);
      d->last_query_sent_time = precise_now;
      accumulate_query_timeout (d, CC->get_timeout);
    } else {
    }
  } else {
    d = get_target_connection (S);
    if (!d) {
      return 0;
    }
    assert (get_targets < MAX_CLUSTER_SERVERS);
    x = get_targets++;
    S->custom_field = -(x+1);
    get_target[x] = S;
    get_connection[x] = d;
  }
  return d;
}
