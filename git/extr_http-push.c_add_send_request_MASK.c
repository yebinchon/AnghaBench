#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct transfer_request {struct transfer_request* next; int /*<<< orphan*/  state; int /*<<< orphan*/ * headers; struct remote_lock* lock; int /*<<< orphan*/ * url; struct object* obj; } ;
struct remote_lock {int dummy; } ;
struct packed_git {int dummy; } ;
struct TYPE_3__ {size_t* hash; } ;
struct object {int flags; TYPE_1__ oid; } ;
struct TYPE_4__ {int /*<<< orphan*/  packs; } ;

/* Variables and functions */
 int /*<<< orphan*/  NEED_PUSH ; 
 int PUSHING ; 
 int REMOTE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct packed_git* FUNC2 (size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int* remote_dir_exists ; 
 TYPE_2__* repo ; 
 struct transfer_request* request_queue_head ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct transfer_request* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct object *obj, struct remote_lock *lock)
{
	struct transfer_request *request;
	struct packed_git *target;

	/* Keep locks active */
	FUNC0();

	/*
	 * Don't push the object if it's known to exist on the remote
	 * or is already in the request queue
	 */
	if (remote_dir_exists[obj->oid.hash[0]] == -1)
		FUNC3(obj->oid.hash[0]);
	if (obj->flags & (REMOTE | PUSHING))
		return 0;
	target = FUNC2(obj->oid.hash, repo->packs);
	if (target) {
		obj->flags |= REMOTE;
		return 0;
	}

	obj->flags |= PUSHING;
	request = FUNC5(sizeof(*request));
	request->obj = obj;
	request->url = NULL;
	request->lock = lock;
	request->headers = NULL;
	request->state = NEED_PUSH;
	request->next = request_queue_head;
	request_queue_head = request;

#ifdef USE_CURL_MULTI
	fill_active_slots();
	step_active_slots();
#endif

	return 1;
}