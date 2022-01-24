#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_result ;
struct TYPE_8__ {int paused; TYPE_7__* conn; int /*<<< orphan*/  req_id; scalar_t__ terminate_flag; void* state; int /*<<< orphan*/  mode; int /*<<< orphan*/  error_message; } ;
typedef  TYPE_1__ php_worker ;
struct TYPE_10__ {int /*<<< orphan*/  status; int /*<<< orphan*/  ev; } ;
struct TYPE_9__ {int is_wait_net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  conn_wait_net ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,char*,int) ; 
 int /*<<< orphan*/  http_worker ; 
 TYPE_6__ immediate_stats ; 
 int /*<<< orphan*/  php_script ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 void* phpq_free_script ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc_stored ; 
 int /*<<< orphan*/  rpc_worker ; 
#define  rst_error 132 
#define  rst_finished 131 
#define  rst_query 130 
#define  rst_query_running 129 
#define  rst_ready 128 
 int /*<<< orphan*/  FUNC14 (int,char*,int /*<<< orphan*/ ) ; 

void FUNC15 (php_worker *worker) {
  int f = 1;
  while (f) {
    if (worker->terminate_flag) {
      FUNC9 (php_script, worker->error_message);
    }

    FUNC2();
//    fprintf (stderr, "state = %d, f = %d\n", php_script_get_state (php_script), f);
    switch (FUNC7 (php_script)) {
      case rst_ready: {
        FUNC14 (2, "before php_script_iterate [req_id = %016llx] (before swap context)\n", worker->req_id);
        immediate_stats.is_wait_net = 0;
        FUNC8 (php_script);
        FUNC14 (2, "after php_script_iterate [req_id = %016llx] (after swap context)\n", worker->req_id);
        break;
      }
      case rst_query: {
        FUNC14 (2, "got query [req_id = %016llx]\n", worker->req_id);
        FUNC10 (worker);
        break;
      }
      case rst_query_running: {
        FUNC14 (2, "paused due to query [req_id = %016llx]\n", worker->req_id);
        f = 0;
        worker->paused = 1;
        immediate_stats.is_wait_net = 1;
        break;
      }
      case rst_error: {
        FUNC14 (2, "php script [req_id = %016llx]: ERROR (probably timeout)\n", worker->req_id);
        FUNC4 (php_script);

        if (worker->conn != NULL) {
          if (worker->mode == http_worker) {
            FUNC3 (worker->conn, "ERROR", 5);
          } else if (worker->mode == rpc_worker) {
            if (!rpc_stored) {
              FUNC13 (worker, -504, FUNC5 (php_script));
            }
          }
        }

        worker->state = phpq_free_script;
        f = 0;
        break;
      }
      case rst_finished: {
        FUNC14 (2, "php script [req_id = %016llx]: OK (still can return RPC_ERROR)\n", worker->req_id);
        script_result *res = FUNC6 (php_script);

        FUNC11 (worker, res);

        FUNC4 (php_script);


        worker->state = phpq_free_script;
        f = 0;
        break;
      }
      default:
        FUNC0 ("php_worker_run: unexpected state" && 0);
    }

    //trying to work with net
    if (!worker->terminate_flag) {
      int new_net_events_cnt = FUNC1 (0);
      if (new_net_events_cnt > 0) {
        FUNC14 (2, "paused for some net activity [req_id = %016llx]\n", worker->req_id);
        f = 0;
        FUNC12 (worker->conn->ev, 1);
        worker->conn->status = conn_wait_net;
        worker->paused = 1;
      }
    }
  }
}