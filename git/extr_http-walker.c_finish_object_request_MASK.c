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
struct object_request {int /*<<< orphan*/  oid; int /*<<< orphan*/  walker; TYPE_1__* req; } ;
struct TYPE_2__ {scalar_t__ rename; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct object_request *obj_req)
{
	if (FUNC0(obj_req->req))
		return;

	if (obj_req->req->rename == 0)
		FUNC2(obj_req->walker, "got %s\n", FUNC1(&obj_req->oid));
}