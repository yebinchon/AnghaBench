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
struct TYPE_5__ {scalar_t__ mode; struct connection* conn; } ;
typedef  TYPE_1__ php_worker ;
struct TYPE_6__ {int data_len; int /*<<< orphan*/  auth_key_id; int /*<<< orphan*/  session_id; scalar_t__ data; } ;
typedef  TYPE_2__ php_query_rpc_message ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_SEND_SESSION_MSG ; 
 int /*<<< orphan*/  php_script ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ rpc_worker ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4 (php_worker *worker, php_query_rpc_message *ans) {
  if (worker->mode == rpc_worker) {
    struct connection *c = worker->conn;
    int *q = (int *)ans->data;
    int qn = ans->data_len;

    FUNC3 (2, "going to send %d bytes to session [%016llx:%016llx]\n", qn, ans->auth_key_id, ans->session_id);
    FUNC2 (c, RPC_SEND_SESSION_MSG, ans->auth_key_id, q, qn);
  }
  FUNC1 (php_script);
  FUNC0 (php_script);
}