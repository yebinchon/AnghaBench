
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int fd; struct conn_query* first_query; } ;
struct conn_query {TYPE_1__* cq_type; } ;
struct TYPE_2__ {int (* wakeup ) (struct conn_query*) ;} ;


 int assert (int) ;
 int fprintf (int ,char*,int) ;
 TYPE_1__ proxy_watermark_query_type ;
 int stderr ;
 int stub1 (struct conn_query*) ;
 int verbosity ;

int sqlps_ready_to_write (struct connection *c) {
  struct conn_query *q = c->first_query;

  if (verbosity > 1) {
    fprintf (stderr, "mysql server connection %d is ready to write\n", c->fd);
  }

  if (q != (struct conn_query *) c) {
    assert (q->cq_type == &proxy_watermark_query_type);
    q->cq_type->wakeup (q);
  }

  return 0;
}
