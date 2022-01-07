
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_15__ ;
typedef struct TYPE_17__ TYPE_11__ ;


struct TYPE_22__ {TYPE_15__* conn; } ;
typedef TYPE_4__ php_worker ;
struct TYPE_20__ {int ans; } ;
struct TYPE_23__ {scalar_t__ protocol; int data_len; TYPE_2__ base; scalar_t__ data; } ;
typedef TYPE_5__ php_net_query_packet_t ;
struct TYPE_24__ {TYPE_1__* func; } ;
typedef TYPE_6__ net_get_ansgen_t ;
struct TYPE_25__ {TYPE_3__* func; int ans; } ;
typedef TYPE_7__ net_ansgen_t ;
struct TYPE_21__ {int (* free ) (TYPE_7__*) ;} ;
struct TYPE_19__ {double (* try_wait ) (TYPE_6__*,double) ;int (* set_id ) (TYPE_6__*,long long) ;} ;
struct TYPE_18__ {int status; } ;
struct TYPE_17__ {char* desc; double timeout; } ;


 int assert (int) ;
 int conn_wait_net ;
 int create_pnet_query (TYPE_15__*,int *,TYPE_7__*,double) ;
 long long cur_request_id ;
 int dummy_request_queue ;
 TYPE_6__* net_get_ansgen_create () ;
 scalar_t__ p_get ;
 scalar_t__ p_get_id ;
 int php_script ;
 int php_script_query_answered (int ) ;
 int php_script_query_readed (int ) ;
 double precise_now ;
 TYPE_11__ query_stats ;
 int stub1 (TYPE_6__*,long long) ;
 double stub2 (TYPE_6__*,double) ;
 int stub3 (TYPE_7__*) ;

void php_worker_run_get_query_packet (php_worker *worker, php_net_query_packet_t *query) {
  php_script_query_readed (php_script);

  if (query->protocol == p_get) {
    query_stats.desc = "RPC GET";
  } else if (query->protocol == p_get_id) {
    query_stats.desc = "RPC GET ID";
  }

  net_get_ansgen_t *ansgen = net_get_ansgen_create();
  net_ansgen_t *net_ansgen = (net_ansgen_t *)ansgen;


  assert (query->data_len == sizeof (long long));
  long long request_id = *(long long *)query->data;

  ansgen->func->set_id (ansgen, request_id);

  double timeout = ansgen->func->try_wait (ansgen, precise_now);
  if (timeout <= 1) {
    query->base.ans = net_ansgen->ans;
    net_ansgen->func->free (net_ansgen);
    php_script_query_answered (php_script);
    return;
  }

  query_stats.timeout = timeout - precise_now;
  create_pnet_query (worker->conn, &dummy_request_queue, net_ansgen, timeout);
  cur_request_id = request_id;


  if (worker->conn != ((void*)0)) {
    worker->conn->status = conn_wait_net;
  }
}
