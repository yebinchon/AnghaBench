#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct connection {int dummy; } ;
struct TYPE_4__ {scalar_t__ in_type; struct connection* extra; } ;
struct TYPE_3__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 TYPE_2__* CQ ; 
 int /*<<< orphan*/  RPC_FUN_NEXT ; 
 int RPC_READY ; 
 int RPC_STOP_READY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,struct connection*) ; 
 TYPE_1__ tl ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ tl_type_conn ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

int FUNC4 (void **IP, void **Data) {
  int op = (long)*Data;
  if (op == RPC_READY || op == RPC_STOP_READY) {
    if (CQ->in_type != tl_type_conn) { return 0; }
    struct connection *c = CQ->extra;
    FUNC2 (12);
    FUNC3 (2, "Kitten php %s\n", op == RPC_READY ? "connected" : "disconnected");
    int res = FUNC1 (op, c);
    FUNC3 (2, "Kitten_php_ready: res = %d, fetch_error = %s, new_size = %d\n", res, tl.error, FUNC0 ());
    return 0;
  }
  RPC_FUN_NEXT;
}