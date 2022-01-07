
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {int dummy; } ;


 int default_double_receive_on_answer (struct rpc_query*) ;

int rpc_fun_double_receive_on_answer (void **IP, void **Data) {
  struct rpc_query *q = *Data;
  default_double_receive_on_answer (q);
  return 0;
}
