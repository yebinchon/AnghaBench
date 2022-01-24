#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xpid ;
struct TYPE_2__ {int /*<<< orphan*/  utime; int /*<<< orphan*/  pid; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
struct rpcs_data {int /*<<< orphan*/ * extra; TYPE_1__ remote_pid; } ;
struct connection {int /*<<< orphan*/  status; int /*<<< orphan*/  pending_queries; int /*<<< orphan*/  In; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  rpc_query_data ;
typedef  int /*<<< orphan*/  php_worker ;
typedef  int /*<<< orphan*/  npid_t ;

/* Variables and functions */
 int MAX_RPC_QUERY_LEN ; 
 struct rpcs_data* FUNC0 (struct connection*) ; 
#define  RPC_INVOKE_KPHP_REQ 131 
#define  RPC_INVOKE_REQ 130 
 int SKIP_ALL_BYTES ; 
#define  TL_KPHP_START_LEASE 129 
#define  TL_KPHP_STOP_LEASE 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  conn_wait_net ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  once_worker ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,struct connection*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,long long) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ precise_now ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int*,int,long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc_worker ; 
 int /*<<< orphan*/  FUNC8 (struct connection*) ; 
 int /*<<< orphan*/  run_once ; 
 int /*<<< orphan*/  script_timeout ; 
 int /*<<< orphan*/  FUNC9 (struct connection*,int /*<<< orphan*/ ) ; 
 scalar_t__ sigterm_on ; 
 scalar_t__ sigterm_time ; 
 int /*<<< orphan*/  FUNC10 (int,char*,long long,...) ; 

int FUNC11 (struct connection *c, int op, int len) {
  struct rpcs_data *D = FUNC0(c);

  FUNC10 (1, "rpcs_execute: fd=%d, op=%d, len=%d\n", c->fd, op, len);

#define MAX_RPC_QUERY_LEN 126214400
  static char buf[MAX_RPC_QUERY_LEN];

  if (sigterm_on && sigterm_time < precise_now) {
    return SKIP_ALL_BYTES;
  }
  npid_t xpid;

  switch (op) {
  case TL_KPHP_STOP_LEASE:
    FUNC3();
    break;
  case TL_KPHP_START_LEASE:
  case RPC_INVOKE_KPHP_REQ:
  case RPC_INVOKE_REQ:
    if (len > MAX_RPC_QUERY_LEN) {
      return SKIP_ALL_BYTES;
    }

    FUNC1 (FUNC6 (&c->In, buf, len) == len);
    FUNC1 (len % (int)sizeof (int) == 0);
    len /= (int)sizeof (int);
    if (len < 6) {
      return SKIP_ALL_BYTES;
    }

    int *v = (int *)buf;
    v += 3;
    len -= 4;

    if (op == TL_KPHP_START_LEASE) {
      if (len < 4) {
        return SKIP_ALL_BYTES;
      }
      FUNC1 (sizeof (xpid) == 12);
      xpid = *(npid_t *)v;
      v += 3;
      len -= 3;
      int timeout = *v++;
      len--;
      FUNC2 (xpid, precise_now + timeout);
      return 0;
      break;
    }

    long long req_id = *(long long *)v;
    v += 2;
    len -= 2;

    FUNC10 (2, "got RPC_INVOKE_KPHP_REQ [req_id = %016llx]\n", req_id);
    FUNC9 (c, script_timeout);


    rpc_query_data *rpc_data = FUNC7 (v, len, req_id, D->remote_pid.ip, D->remote_pid.port, D->remote_pid.pid, D->remote_pid.utime);

    php_worker *worker = FUNC4 (run_once ? once_worker : rpc_worker, c, NULL, rpc_data, script_timeout, req_id);
    D->extra = worker;

    int res = FUNC5 (worker);
    if (res == 1) {
      FUNC8 (c);
    } else {
      FUNC1 (c->pending_queries >= 0 && c->status == conn_wait_net);
    }

    return 0;
    break;
  }

  return SKIP_ALL_BYTES;
#undef MAX_RPC_QUERY_LEN
}