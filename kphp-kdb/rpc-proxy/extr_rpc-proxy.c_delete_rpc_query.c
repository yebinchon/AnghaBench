
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {int dummy; } ;


 int query_on_free (struct rpc_query*) ;

void delete_rpc_query (struct rpc_query *q) {
  query_on_free (q);
}
