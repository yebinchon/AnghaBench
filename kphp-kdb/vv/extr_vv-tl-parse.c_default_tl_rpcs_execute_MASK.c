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
struct connection {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  remote_pid; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct connection*) ; 
 int RPC_INVOKE_REQ ; 
 int SKIP_ALL_BYTES ; 
 int /*<<< orphan*/ * TL_IN_PID ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct connection*) ; 
 int FUNC3 (struct connection*,int,int) ; 

int FUNC4 (struct connection *c, int op, int len) {
  FUNC2 (c);
  if (op != RPC_INVOKE_REQ) {
    return SKIP_ALL_BYTES;
  }
  TL_IN_PID = &FUNC0(c)->remote_pid;
  FUNC1 ();
  return FUNC3 (c, op, len);
}