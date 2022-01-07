
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int php_worker ;
typedef int php_query_x2_t ;
typedef int php_query_rpc_message ;
typedef int php_query_rpc_answer ;
typedef int php_query_http_load_post_t ;
typedef int php_query_create_queue_t ;
typedef int php_query_connect_t ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ php_query_base_t ;
struct TYPE_5__ {char* desc; int q_id; } ;
 int assert (int ) ;
 int php_script ;
 scalar_t__ php_script_get_query (int ) ;
 int php_worker_create_queue (int *,int *) ;
 int php_worker_http_load_post (int *,int *) ;
 int php_worker_run_net_query (int *,TYPE_1__*) ;
 int php_worker_run_query_connect (int *,int *) ;
 int php_worker_run_query_x2 (int *,int *) ;
 int php_worker_run_rpc_answer_query (int *,int *) ;
 int php_worker_run_rpc_send_message (int *,int *) ;
 int qmem_free_ptrs () ;
 TYPE_2__ query_stats ;
 int query_stats_id ;

void php_worker_run_query (php_worker *worker) {
  php_query_base_t *q_base = (php_query_base_t *)php_script_get_query (php_script);

  qmem_free_ptrs();

  query_stats.q_id = query_stats_id;
  switch ((unsigned int)q_base->type & 0xFFFF0000) {
    case 128:
      query_stats.desc = "PHPQX2";
      php_worker_run_query_x2 (worker, (php_query_x2_t *)q_base);
      break;
    case 130:
      query_stats.desc = "RPC_ANSWER";
      php_worker_run_rpc_answer_query (worker, (php_query_rpc_answer *)q_base);
      break;
    case 129:
      query_stats.desc = "RPC_SEND_MESSAGE";
      php_worker_run_rpc_send_message (worker, (php_query_rpc_message *)q_base);
      break;
    case 134:
      query_stats.desc = "CONNECT";
      php_worker_run_query_connect (worker, (php_query_connect_t *)q_base);
      break;
    case 131:
      query_stats.desc = "NET";
      php_worker_run_net_query (worker, q_base);
      break;
    case 133:
      query_stats.desc = "CREATE_QUEUE";
      php_worker_create_queue (worker, (php_query_create_queue_t *)q_base);
      break;
    case 132:
      query_stats.desc = "HTTP_LOAD_POST";
      php_worker_http_load_post (worker, (php_query_http_load_post_t *)q_base);
      break;
    default:
      assert ("unknown php_query type" && 0);
  }
}
