#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rpc_status ;
typedef  TYPE_1__* rpc_app_t ;
typedef  int /*<<< orphan*/  plist_t ;
struct TYPE_5__ {int /*<<< orphan*/  is_proxy; int /*<<< orphan*/  app_name; int /*<<< orphan*/  app_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_ERROR ; 
 int /*<<< orphan*/  RPC_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 () ; 

rpc_status FUNC5(const plist_t node, rpc_app_t *to_app) {
  rpc_app_t app = (to_app ? FUNC4() : NULL);
  if (!app ||
      FUNC2(node, "WIRApplicationIdentifierKey",
        &app->app_id) ||
      FUNC1(node, "WIRApplicationNameKey",
        &app->app_name) ||
      FUNC0(node, "WIRIsApplicationProxyKey",
        &app->is_proxy)) {
    FUNC3(app);
    if (to_app) {
      *to_app = NULL;
    }
    return RPC_ERROR;
  }
  *to_app = app;
  return RPC_SUCCESS;
}