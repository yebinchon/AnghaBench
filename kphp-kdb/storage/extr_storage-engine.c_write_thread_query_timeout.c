
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gather_data {int key; int key_len; } ;
struct conn_query {int dummy; } ;


 struct gather_data* GATHER_QUERY (struct conn_query*) ;
 int delete_write_thread_query (struct conn_query*) ;
 int gather_timeouts ;
 int kprintf (char*,int ,int ) ;
 int vkprintf (int,char*,struct conn_query*) ;

int write_thread_query_timeout (struct conn_query *q) {
  vkprintf (3, "Query %p timeout.\n", q);
  struct gather_data *G = GATHER_QUERY(q);
  kprintf ("Query on key %.*s timeout\n", G->key_len, G->key);
  gather_timeouts++;
  delete_write_thread_query (q);
  return 0;
}
