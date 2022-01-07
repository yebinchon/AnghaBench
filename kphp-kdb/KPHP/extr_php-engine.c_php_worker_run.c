
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int script_result ;
struct TYPE_8__ {int paused; TYPE_7__* conn; int req_id; scalar_t__ terminate_flag; void* state; int mode; int error_message; } ;
typedef TYPE_1__ php_worker ;
struct TYPE_10__ {int status; int ev; } ;
struct TYPE_9__ {int is_wait_net; } ;


 int assert (int) ;
 int conn_wait_net ;
 int epoll_fetch_events (int ) ;
 int get_utime_monotonic () ;
 int http_return (TYPE_7__*,char*,int) ;
 int http_worker ;
 TYPE_6__ immediate_stats ;
 int php_script ;
 int php_script_finish (int ) ;
 int php_script_get_error (int ) ;
 int * php_script_get_res (int ) ;
 int php_script_get_state (int ) ;
 int php_script_iterate (int ) ;
 int php_script_terminate (int ,int ) ;
 int php_worker_run_query (TYPE_1__*) ;
 int php_worker_set_result (TYPE_1__*,int *) ;
 void* phpq_free_script ;
 int put_event_into_heap_tail (int ,int) ;
 int rpc_error (TYPE_1__*,int,int ) ;
 int rpc_stored ;
 int rpc_worker ;





 int vkprintf (int,char*,int ) ;

void php_worker_run (php_worker *worker) {
  int f = 1;
  while (f) {
    if (worker->terminate_flag) {
      php_script_terminate (php_script, worker->error_message);
    }

    get_utime_monotonic();

    switch (php_script_get_state (php_script)) {
      case 128: {
        vkprintf (2, "before php_script_iterate [req_id = %016llx] (before swap context)\n", worker->req_id);
        immediate_stats.is_wait_net = 0;
        php_script_iterate (php_script);
        vkprintf (2, "after php_script_iterate [req_id = %016llx] (after swap context)\n", worker->req_id);
        break;
      }
      case 130: {
        vkprintf (2, "got query [req_id = %016llx]\n", worker->req_id);
        php_worker_run_query (worker);
        break;
      }
      case 129: {
        vkprintf (2, "paused due to query [req_id = %016llx]\n", worker->req_id);
        f = 0;
        worker->paused = 1;
        immediate_stats.is_wait_net = 1;
        break;
      }
      case 132: {
        vkprintf (2, "php script [req_id = %016llx]: ERROR (probably timeout)\n", worker->req_id);
        php_script_finish (php_script);

        if (worker->conn != ((void*)0)) {
          if (worker->mode == http_worker) {
            http_return (worker->conn, "ERROR", 5);
          } else if (worker->mode == rpc_worker) {
            if (!rpc_stored) {
              rpc_error (worker, -504, php_script_get_error (php_script));
            }
          }
        }

        worker->state = phpq_free_script;
        f = 0;
        break;
      }
      case 131: {
        vkprintf (2, "php script [req_id = %016llx]: OK (still can return RPC_ERROR)\n", worker->req_id);
        script_result *res = php_script_get_res (php_script);

        php_worker_set_result (worker, res);

        php_script_finish (php_script);


        worker->state = phpq_free_script;
        f = 0;
        break;
      }
      default:
        assert ("php_worker_run: unexpected state" && 0);
    }


    if (!worker->terminate_flag) {
      int new_net_events_cnt = epoll_fetch_events (0);
      if (new_net_events_cnt > 0) {
        vkprintf (2, "paused for some net activity [req_id = %016llx]\n", worker->req_id);
        f = 0;
        put_event_into_heap_tail (worker->conn->ev, 1);
        worker->conn->status = conn_wait_net;
        worker->paused = 1;
      }
    }
  }
}
