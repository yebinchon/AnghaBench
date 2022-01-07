
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {int dummy; } ;


 struct rpc_query* _secure_send_create_rpc_query (long long,int) ;

struct rpc_query *secure_send_create_rpc_query_binlog (long long new_qid) {
  return _secure_send_create_rpc_query (new_qid, 1);
}
