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
typedef  TYPE_1__* rpc_t ;
typedef  int /*<<< orphan*/  rpc_status ;
typedef  int /*<<< orphan*/  plist_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* on_applicationUpdated ) (TYPE_1__*,char*,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_ERROR ; 
 int /*<<< orphan*/  RPC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char*) ; 

rpc_status FUNC4(rpc_t self, const plist_t args) {
  char *app_id = NULL;
  char *dest_id = NULL;
  rpc_status ret;
  if (!FUNC1(args, "WIRHostApplicationIdentifierKey", &app_id)) {
    if (!FUNC1(args, "WIRApplicationIdentifierKey", &dest_id) &&
      !self->on_applicationUpdated(self, app_id, dest_id)) {
      ret = RPC_SUCCESS;
    } else {
      ret = RPC_ERROR;
    }
  } else if (!FUNC1(args, "WIRApplicationNameKey", &app_id) &&
             !FUNC1(args, "WIRApplicationIdentifierKey", &dest_id) &&
             !self->on_applicationUpdated(self, app_id, dest_id)) {
    ret = RPC_SUCCESS;
  } else {
    ret = RPC_ERROR;
  }
  FUNC0(app_id);
  FUNC0(dest_id);
  return ret;
}