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
typedef  int /*<<< orphan*/  rpc_t ;
typedef  int /*<<< orphan*/  rpc_status ;
typedef  int /*<<< orphan*/  plist_t ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

rpc_status FUNC3(rpc_t self,
    const char *connection_id) {
  if (!connection_id) {
    return RPC_ERROR;
  }
  const char *selector = "_rpc_getConnectedApplications:";
  plist_t args = FUNC1(connection_id);
  rpc_status ret = FUNC2(self, selector, args);
  FUNC0(args);
  return ret;
}