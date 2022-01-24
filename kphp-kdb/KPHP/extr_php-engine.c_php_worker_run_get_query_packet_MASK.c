#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_15__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_15__* conn; } ;
typedef  TYPE_4__ php_worker ;
struct TYPE_20__ {int /*<<< orphan*/  ans; } ;
struct TYPE_23__ {scalar_t__ protocol; int data_len; TYPE_2__ base; scalar_t__ data; } ;
typedef  TYPE_5__ php_net_query_packet_t ;
struct TYPE_24__ {TYPE_1__* func; } ;
typedef  TYPE_6__ net_get_ansgen_t ;
struct TYPE_25__ {TYPE_3__* func; int /*<<< orphan*/  ans; } ;
typedef  TYPE_7__ net_ansgen_t ;
struct TYPE_21__ {int /*<<< orphan*/  (* free ) (TYPE_7__*) ;} ;
struct TYPE_19__ {double (* try_wait ) (TYPE_6__*,double) ;int /*<<< orphan*/  (* set_id ) (TYPE_6__*,long long) ;} ;
struct TYPE_18__ {int /*<<< orphan*/  status; } ;
struct TYPE_17__ {char* desc; double timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  conn_wait_net ; 
 int /*<<< orphan*/  FUNC1 (TYPE_15__*,int /*<<< orphan*/ *,TYPE_7__*,double) ; 
 long long cur_request_id ; 
 int /*<<< orphan*/  dummy_request_queue ; 
 TYPE_6__* FUNC2 () ; 
 scalar_t__ p_get ; 
 scalar_t__ p_get_id ; 
 int /*<<< orphan*/  php_script ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 double precise_now ; 
 TYPE_11__ query_stats ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,long long) ; 
 double FUNC6 (TYPE_6__*,double) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 

void FUNC8 (php_worker *worker, php_net_query_packet_t *query) {
  FUNC4 (php_script);

  if (query->protocol == p_get) {
    query_stats.desc = "RPC GET";
  } else if (query->protocol == p_get_id) {
    query_stats.desc = "RPC GET ID";
  }
  //fprintf (stderr, "[len = %d]\n", query->data_len);
  net_get_ansgen_t *ansgen = FUNC2();
  net_ansgen_t *net_ansgen = (net_ansgen_t *)ansgen;

  //TODO: fix this hack
  FUNC0 (query->data_len == sizeof (long long));
  long long request_id = *(long long *)query->data;

  ansgen->func->set_id (ansgen, request_id);

  double timeout = ansgen->func->try_wait (ansgen, precise_now);
  if (timeout <= 1) {
    query->base.ans = net_ansgen->ans;
    net_ansgen->func->free (net_ansgen);
    FUNC3 (php_script);
    return;
  }

  query_stats.timeout = timeout - precise_now;
  FUNC1 (worker->conn, &dummy_request_queue, net_ansgen, timeout);
  cur_request_id = request_id;

  //TODO: try to remove if
  if (worker->conn != NULL) {
    worker->conn->status = conn_wait_net;
  }
}