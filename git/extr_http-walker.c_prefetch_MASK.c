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
struct walker_data {int /*<<< orphan*/  alt; } ;
struct walker {int /*<<< orphan*/  get_verbosely; struct walker_data* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  hash; } ;
struct object_request {int /*<<< orphan*/  node; int /*<<< orphan*/ * req; int /*<<< orphan*/  state; int /*<<< orphan*/  repo; TYPE_1__ oid; struct walker* walker; } ;

/* Variables and functions */
 int /*<<< orphan*/  WAITING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  http_is_verbose ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  object_queue_head ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct object_request* FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct walker *walker, unsigned char *sha1)
{
	struct object_request *newreq;
	struct walker_data *data = walker->data;

	newreq = FUNC4(sizeof(*newreq));
	newreq->walker = walker;
	FUNC1(newreq->oid.hash, sha1);
	newreq->repo = data->alt;
	newreq->state = WAITING;
	newreq->req = NULL;

	http_is_verbose = walker->get_verbosely;
	FUNC2(&newreq->node, &object_queue_head);

#ifdef USE_CURL_MULTI
	fill_active_slots();
	step_active_slots();
#endif
}