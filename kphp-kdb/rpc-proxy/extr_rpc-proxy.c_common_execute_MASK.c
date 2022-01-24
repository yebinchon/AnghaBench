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

/* Variables and functions */
#define  RPC_INVOKE_KPHP_REQ 133 
#define  RPC_INVOKE_REQ 132 
#define  RPC_PONG 131 
#define  RPC_REQ_ERROR 130 
#define  RPC_REQ_RESULT 129 
#define  RPC_REQ_RUNNING 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3 (int op) {
  switch (op) {
  case RPC_REQ_RESULT:
  case RPC_REQ_ERROR:
    FUNC0 ();
    return;
  case RPC_INVOKE_REQ:
  case RPC_INVOKE_KPHP_REQ:
    FUNC2 ();
    return;
  case RPC_REQ_RUNNING:
  case RPC_PONG:
    return;
  default:
    FUNC1 (op);
    return;
  }
}