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
struct object_request {int /*<<< orphan*/  node; TYPE_1__* req; } ;
struct TYPE_2__ {int localfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct object_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct object_request *obj_req)
{
	if (obj_req->req !=NULL && obj_req->req->localfile != -1)
		FUNC0("fd leakage in release: %d", obj_req->req->localfile);

	FUNC2(&obj_req->node);
	FUNC1(obj_req);
}