#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* rpc_t ;
typedef  int /*<<< orphan*/  rpc_status ;
typedef  int /*<<< orphan*/  plist_t ;
struct TYPE_12__ {int /*<<< orphan*/  (* on_error ) (TYPE_1__*,char*,char const*,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_ERROR ; 
 int /*<<< orphan*/  RPC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,char const*,char*) ; 

rpc_status FUNC11(rpc_t self, const char *selector, const plist_t args) {
  if (!selector) {
    return RPC_ERROR;
  }

  if (!FUNC9(selector, "_rpc_reportSetup:")) {
    if (!FUNC8(self, args)) {
      return RPC_SUCCESS;
    }
  } else if (!FUNC9(selector, "_rpc_reportConnectedApplicationList:")) {
    if (!FUNC7(self, args)) {
      return RPC_SUCCESS;
    }
  } else if (!FUNC9(selector, "_rpc_applicationConnected:")) {
    if (!FUNC2(self, args)) {
      return RPC_SUCCESS;
    }
  } else if (!FUNC9(selector, "_rpc_applicationDisconnected:")) {
    if (!FUNC3(self, args)) {
      return RPC_SUCCESS;
    }
  } else if (!FUNC9(selector, "_rpc_applicationSentListing:")) {
    if (!FUNC5(self, args)) {
      return RPC_SUCCESS;
    }
  } else if (!FUNC9(selector, "_rpc_applicationSentData:")) {
    if (!FUNC4(self, args)) {
      return RPC_SUCCESS;
    }
  } else if (!FUNC9(selector, "_rpc_applicationUpdated:")) {
    if (!FUNC6(self, args)) {
      return RPC_SUCCESS;
    }
  } else if (!FUNC9(selector, "_rpc_reportConnectedDriverList:")) {
    return RPC_SUCCESS;
  }

  // invalid msg
  char *args_xml = NULL;
  FUNC1(self, args, &args_xml, true);
  rpc_status ret = self->on_error(self, "Invalid message %s %s",
      selector, args_xml);
  FUNC0(args_xml);
  return ret;
}