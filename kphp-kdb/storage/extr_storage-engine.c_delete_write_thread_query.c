
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int terminated; } ;
struct gather_data {TYPE_2__* c; TYPE_1__ Out; } ;
struct conn_query {scalar_t__ req_generation; } ;
struct TYPE_4__ {scalar_t__ generation; } ;


 struct gather_data* GATHER_QUERY (struct conn_query*) ;
 int delete_conn_query (struct conn_query*) ;
 int free_gather (struct gather_data*) ;
 int return_file_location (struct gather_data*) ;
 int zfree (struct conn_query*,int) ;

int delete_write_thread_query (struct conn_query *q) {
  struct gather_data *G = GATHER_QUERY(q);
  if (!G->Out.terminated) {
    return 0;
  }
  if (G->c->generation == q->req_generation) {
    return_file_location (G);
  }
  delete_conn_query (q);
  free_gather (G);
  zfree (q, sizeof (struct conn_query));
  return 0;
}
