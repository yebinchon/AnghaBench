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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  rpc_t ;
typedef  int /*<<< orphan*/  rpc_status ;
typedef  int /*<<< orphan*/  plist_t ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

rpc_status FUNC7(rpc_t self, const char *connection_id,
    const char *app_id, uint32_t page_id, const char *sender_id) {
  if (!connection_id || !app_id || !sender_id) {
    return RPC_ERROR;
  }
  const char *selector = "_rpc_forwardSocketSetup:";
  plist_t args = FUNC5(connection_id);
  FUNC0(args, "WIRApplicationIdentifierKey",
      FUNC3(app_id));
  FUNC0(args, "WIRAutomaticallyPause",
      FUNC2(false));
  FUNC0(args, "WIRPageIdentifierKey",
      FUNC4(page_id));
  FUNC0(args, "WIRSenderKey",
      FUNC3(sender_id));
  rpc_status ret = FUNC6(self, selector, args);
  FUNC1(args);
  return ret;
}