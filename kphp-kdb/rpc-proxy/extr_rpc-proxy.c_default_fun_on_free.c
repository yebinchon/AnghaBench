
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {int dummy; } ;


 int default_on_free (struct rpc_query*) ;

int default_fun_on_free (void **IP, void **Data) {
  struct rpc_query *q = *Data;
  default_on_free (q);
  return 0;
}
