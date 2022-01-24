#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* rpc_t ;
typedef  int /*<<< orphan*/  rpc_status ;
typedef  int /*<<< orphan*/ * rpc_app_t ;
typedef  int /*<<< orphan*/  plist_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* on_applicationDisconnected ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

rpc_status FUNC3(rpc_t self, const plist_t args) {
  rpc_app_t app = NULL;
  rpc_status ret = FUNC1(args, &app);
  if (!ret) {
    ret = self->on_applicationDisconnected(self, app);
    FUNC0(app);
  }
  return ret;
}