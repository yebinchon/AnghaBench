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
struct TYPE_2__ {short port; } ;

/* Variables and functions */
 int MAX_CONNECTIONS ; 
 TYPE_1__ PID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int dynamic_data_buffer_size ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int maxconn ; 
 int now ; 
 int /*<<< orphan*/  pid ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ rpc_port ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 char* username ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

void FUNC10() {
  FUNC2();
  now = (int)FUNC8 (NULL);

  pid = FUNC5();
  // RPC part
  PID.port = (short)rpc_port;

  dynamic_data_buffer_size = (1 << 26);//26 for struct conn_query
  FUNC6();

  if (!username && maxconn == MAX_CONNECTIONS && FUNC4()) {
    maxconn = 1000; //not for root
  }

  if (FUNC7 (maxconn + 16) < 0) {
    FUNC9 (-1, "fatal: cannot raise open file limit to %d\n", maxconn + 16);
    FUNC3 (1);
  }

  FUNC0 (NULL);

  if (FUNC1 (username) < 0) {
    FUNC9 (-1, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC3 (1);
  }
}