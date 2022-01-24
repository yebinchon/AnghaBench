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

/* Variables and functions */
 int /*<<< orphan*/ * P ; 
 int PACKET_BUFFER_SIZE ; 
 int additional ; 
 int /*<<< orphan*/  compiler ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct connection* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*,int) ; 
 int /*<<< orphan*/  targ ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  typename ; 

int FUNC8 (char *cmd) {
  FUNC6 (&compiler);
  int r = FUNC7 (&compiler, cmd, &P[5 + additional], PACKET_BUFFER_SIZE - 6 - additional, &typename);
  if (r < 0) {
    FUNC4 ("tl_serialize_rpc_function_call fail. Errors:\n");
    FUNC3 ();
    return r;
  } else {
    struct connection *c = FUNC1 (targ);
    if (c == NULL) {
      FUNC2 ("get_target_connection returns NULL.\n");
      FUNC0 (1);
    }
    FUNC5 (c, r);
  }
  return 0;
}