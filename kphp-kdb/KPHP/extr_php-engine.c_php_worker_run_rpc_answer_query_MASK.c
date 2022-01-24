#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct connection {int dummy; } ;
struct TYPE_5__ {scalar_t__ mode; int /*<<< orphan*/  req_id; struct connection* conn; } ;
typedef  TYPE_1__ php_worker ;
struct TYPE_6__ {int data_len; scalar_t__ data; } ;
typedef  TYPE_2__ php_query_rpc_answer ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_REQ_ERROR ; 
 int /*<<< orphan*/  RPC_REQ_RESULT ; 
 int /*<<< orphan*/  php_script ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ rpc_worker ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int /*<<< orphan*/ ) ; 

void FUNC4 (php_worker *worker, php_query_rpc_answer *ans) {
  if (worker->mode == rpc_worker) {
    struct connection *c = worker->conn;
    int *q = (int *)ans->data;
    int qn = ans->data_len;

    FUNC3 (2, "going to send %d bytes as an answer [req_id = %016llx]\n", qn, worker->req_id);
    FUNC2 (c, q[2] == 0 ? RPC_REQ_RESULT : RPC_REQ_ERROR, worker->req_id, q, qn);
  }
  FUNC1 (php_script);
  FUNC0 (php_script);
}