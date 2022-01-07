
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int last_query_sent_time; scalar_t__ Tmp; int Out; int status; } ;
struct conn_query {int custom_type; } ;
struct TYPE_4__ {scalar_t__ get_timeout; } ;
struct TYPE_3__ {int custom_field; } ;


 TYPE_2__* CC ;
 int accumulate_query_timeout (struct connection*,scalar_t__) ;
 int conn_wait_net ;
 struct conn_query* create_query (struct connection*,struct connection*,scalar_t__) ;
 int flush_output (struct connection*) ;
 int fprintf (int ,char*,int) ;
 int free_tmp_buffers (struct connection*) ;
 struct connection** get_connection ;
 TYPE_1__** get_target ;
 int get_targets ;
 int precise_now ;
 int set_connection_timeout (struct connection*,scalar_t__) ;
 int stderr ;
 int verbosity ;
 int write_out (int *,char*,int) ;

int mcp_get_end (struct connection *c, int key_count) {
  int i;
  struct connection *d;
  if (verbosity > 1) {
    fprintf (stderr, "proxy_get_end (%d)\n", key_count);
  }
  if (!get_targets) {
    free_tmp_buffers (c);
    write_out (&c->Out, "END\r\n", 5);
    return 0;
  }
  c->status = conn_wait_net;

  for (i = 0; i < get_targets; i++) {
    struct conn_query *Q;
    int x = get_target[i]->custom_field;
    get_target[i]->custom_field = 0;

    if (x > 0) {
      d = get_connection[i];
      write_out (&d->Out, "\r\n", 2);

      Q = create_query (d, c, CC->get_timeout + 0.2);
      if ( c->Tmp) {
        Q->custom_type |= 0x1000;
      }
      flush_output (d);
      d->last_query_sent_time = precise_now;
      accumulate_query_timeout (d, CC->get_timeout);
    }
  }
  set_connection_timeout (c, CC->get_timeout);
  free_tmp_buffers (c);
  return 0;
}
