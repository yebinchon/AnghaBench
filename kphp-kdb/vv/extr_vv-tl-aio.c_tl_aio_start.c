
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_saved_query {int wait_num; int attempt; struct aio_connection** restart; } ;
struct aio_connection {int dummy; } ;


 int * Connections ;
 int assert (int) ;
 int default_tl_aio_metafile_query_type ;
 int tl_create_aio_query (struct aio_connection*,int *,double,int *,struct tl_saved_query*) ;
 int vkprintf (int,char*) ;

int tl_aio_start (struct aio_connection **aio_connections, int conn_num, double timeout, struct tl_saved_query *q) {
  assert (q->restart);
  q->attempt ++;

  assert (conn_num >= 0);
  if (!conn_num) {
    return 0;
  }

  int i;
  for (i = 0; i < conn_num; i++) {
    assert (aio_connections);
    tl_create_aio_query (aio_connections[i], &Connections[0], timeout, &default_tl_aio_metafile_query_type, q);
  }
  q->wait_num += conn_num;
  vkprintf (1, "Creating aio for rpc\n");
  return q->wait_num;
}
