#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct walker_data {struct alt_base* alt; } ;
struct walker {struct walker_data* data; } ;
struct object_request {TYPE_2__* req; TYPE_1__* repo; int /*<<< orphan*/  state; struct walker* walker; } ;
struct alt_base {int /*<<< orphan*/  base; } ;
struct TYPE_6__ {int /*<<< orphan*/  errorstr; int /*<<< orphan*/  http_code; int /*<<< orphan*/  curl_result; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (struct walker*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct object_request*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct walker*,struct object_request*) ; 

__attribute__((used)) static void FUNC7(void *callback_data)
{
	struct object_request *obj_req =
		(struct object_request *)callback_data;
	struct walker *walker = obj_req->walker;
	struct walker_data *data = walker->data;
	struct alt_base *alt = data->alt;

	FUNC4(obj_req->req);
	obj_req->state = COMPLETE;

	FUNC3(&obj_req->req->curl_result,
			      obj_req->req->http_code,
			      obj_req->req->errorstr,
			      sizeof(obj_req->req->errorstr));

	/* Use alternates if necessary */
	if (FUNC2(obj_req->req)) {
		FUNC0(walker, alt->base);
		if (obj_req->repo->next != NULL) {
			obj_req->repo =
				obj_req->repo->next;
			FUNC5(obj_req->req);
			FUNC6(walker, obj_req);
			return;
		}
	}

	FUNC1(obj_req);
}