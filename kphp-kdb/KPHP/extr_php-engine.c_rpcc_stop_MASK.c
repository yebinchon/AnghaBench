#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct connection {int dummy; } ;
struct conn_target {int dummy; } ;

/* Variables and functions */
 scalar_t__ SIGTERM_WAIT_TIMEOUT ; 
 struct conn_target* Targets ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct connection* FUNC1 (struct conn_target*,int /*<<< orphan*/ ) ; 
 scalar_t__ precise_now ; 
 int rpc_client_target ; 
 int /*<<< orphan*/  FUNC2 (struct connection*) ; 
 int rpc_stopped ; 
 scalar_t__ sigterm_time ; 

void FUNC3 () {
  if (rpc_client_target != -1) {
    struct conn_target *target = &Targets[rpc_client_target];
    struct connection *conn = FUNC1 (target, 0);
    if (conn != NULL) {
      FUNC2 (conn);
    }
    FUNC0();
  }
  rpc_stopped = 1;
  sigterm_time = precise_now + SIGTERM_WAIT_TIMEOUT;
}