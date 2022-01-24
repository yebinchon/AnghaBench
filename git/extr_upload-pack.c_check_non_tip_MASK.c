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
struct packet_writer {int dummy; } ;
struct object_array {int nr; TYPE_1__* objects; } ;
struct object {int /*<<< orphan*/  oid; } ;
struct TYPE_2__ {struct object* item; } ;

/* Variables and functions */
 int ALLOW_REACHABLE_SHA1 ; 
 int allow_unadvertised_object_request ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct object_array*) ; 
 int /*<<< orphan*/  FUNC2 (struct object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct packet_writer*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stateless_rpc ; 

__attribute__((used)) static void FUNC5(struct object_array *want_obj,
			  struct packet_writer *writer)
{
	int i;

	/*
	 * In the normal in-process case without
	 * uploadpack.allowReachableSHA1InWant,
	 * non-tip requests can never happen.
	 */
	if (!stateless_rpc && !(allow_unadvertised_object_request & ALLOW_REACHABLE_SHA1))
		goto error;
	if (!FUNC1(want_obj))
		/* All the non-tip ones are ancestors of what we advertised */
		return;

error:
	/* Pick one of them (we know there at least is one) */
	for (i = 0; i < want_obj->nr; i++) {
		struct object *o = want_obj->objects[i].item;
		if (!FUNC2(o)) {
			FUNC4(writer,
					    "upload-pack: not our ref %s",
					    FUNC3(&o->oid));
			FUNC0("git upload-pack: not our ref %s",
			    FUNC3(&o->oid));
		}
	}
}