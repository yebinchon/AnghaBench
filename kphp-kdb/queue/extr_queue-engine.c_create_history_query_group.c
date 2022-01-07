
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct connection {int pending_queries; } ;
typedef int queue ;
struct TYPE_6__ {int n; TYPE_1__** k; } ;
typedef TYPE_2__ qkey_group ;
struct TYPE_7__ {TYPE_1__* extra; } ;
struct TYPE_5__ {int subscribed; int lock; int name; int conn; int * q; } ;


 int CLOCK_MONOTONIC ;
 TYPE_4__* HTS_DATA (struct connection*) ;
 int assert (int ) ;
 int create_history_query (int *,struct connection*,double,int *,int ) ;
 int fprintf (int ,char*,int,double) ;
 int get_utime (int ) ;
 int stderr ;
 int verbosity ;

int create_history_query_group (qkey_group *g, struct connection *c, double timeout) {
  int i;

  if (verbosity > 2) {
    fprintf (stderr, "create_history_query_group (size = %d) (timeout = %lf)\n", g->n, timeout);
  }
  for (i = 0; i < g->n; i++) {
    queue *q = g->k[i]->q;
    assert (q != ((void*)0));
    HTS_DATA (c)->extra = g->k[i];
    create_history_query (q, c, timeout, &g->k[i]->conn, g->k[i]->name);
    g->k[i]->lock++;
    g->k[i]->subscribed = get_utime (CLOCK_MONOTONIC);
  }
  c->pending_queries = 1;

  return 1;
}
