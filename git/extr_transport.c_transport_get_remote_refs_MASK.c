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
struct transport {int got_remote_refs; struct ref const* remote_refs; TYPE_1__* vtable; } ;
struct ref {int dummy; } ;
struct argv_array {int dummy; } ;
struct TYPE_2__ {struct ref const* (* get_refs_list ) (struct transport*,int /*<<< orphan*/ ,struct argv_array const*) ;} ;

/* Variables and functions */
 struct ref const* FUNC0 (struct transport*,int /*<<< orphan*/ ,struct argv_array const*) ; 

const struct ref *FUNC1(struct transport *transport,
					    const struct argv_array *ref_prefixes)
{
	if (!transport->got_remote_refs) {
		transport->remote_refs =
			transport->vtable->get_refs_list(transport, 0,
							 ref_prefixes);
		transport->got_remote_refs = 1;
	}

	return transport->remote_refs;
}