
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int last_query_sent_time; int Out; } ;
struct TYPE_3__ {int s_addr; } ;
struct conn_target {int port; TYPE_1__ target; } ;
struct TYPE_4__ {int (* flush_query ) (struct connection*) ;} ;


 TYPE_2__* MCC_FUNC (struct connection*) ;
 int assert (int) ;
 char* conv_addr (int ,int ) ;
 int fprintf (int ,char*,char*,...) ;
 struct connection* get_target_connection (struct conn_target*) ;
 int precise_now ;
 int sent_queries ;
 int stderr ;
 int stub1 (struct connection*) ;
 int verbosity ;
 int write_out (int *,char*,int) ;

int send_to (struct conn_target *S, char *query, int query_len, int force) {
  struct connection *d = get_target_connection (S);
  if (d == ((void*)0)) {
    if (verbosity > 0) {
      fprintf (stderr, "cannot find connection to target %s:%d for query %s, dropping query\n", S ? conv_addr (S->target.s_addr, 0) : "?", S ? S->port : 0, query);
    }
    return -1;
  }
  if (verbosity > 1) {
    fprintf (stderr, "send query '%s'\n", query);
  }
  assert (write_out (&d->Out, query, query_len) == query_len);

  sent_queries++;

  if (force) {
    MCC_FUNC (d)->flush_query (d);
  }
  d->last_query_sent_time = precise_now;
  return 0;
}
