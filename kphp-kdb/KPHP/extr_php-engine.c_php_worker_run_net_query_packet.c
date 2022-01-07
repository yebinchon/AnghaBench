
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int php_worker ;
struct TYPE_7__ {int protocol; } ;
typedef TYPE_1__ php_net_query_packet_t ;


 int assert (int ) ;





 int php_worker_run_get_query_packet (int *,TYPE_1__*) ;
 int php_worker_run_mc_query_packet (int *,TYPE_1__*) ;
 int php_worker_run_rpc_query_packet (int *,TYPE_1__*) ;
 int php_worker_run_sql_query_packet (int *,TYPE_1__*) ;

void php_worker_run_net_query_packet (php_worker *worker, php_net_query_packet_t *query) {

  switch (query->protocol) {
    case 130:
      php_worker_run_mc_query_packet (worker, query);
      break;
    case 128:
      php_worker_run_sql_query_packet (worker, query);
      break;
    case 129:
      php_worker_run_rpc_query_packet (worker, query);
      break;
    case 132:
    case 131:
      php_worker_run_get_query_packet (worker, query);
      break;
    default:
      assert (0);
  }

}
