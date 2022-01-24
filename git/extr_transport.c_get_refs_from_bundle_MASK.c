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
struct transport {int /*<<< orphan*/  url; struct bundle_transport_data* data; } ;
struct ref_list_entry {int /*<<< orphan*/  oid; int /*<<< orphan*/  name; } ;
struct ref {struct ref* next; int /*<<< orphan*/  old_oid; } ;
struct TYPE_3__ {int nr; struct ref_list_entry* list; } ;
struct TYPE_4__ {TYPE_1__ references; } ;
struct bundle_transport_data {int get_refs_from_bundle_called; scalar_t__ fd; TYPE_2__ header; } ;
struct argv_array {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ref* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static struct ref *FUNC6(struct transport *transport,
					int for_push,
					const struct argv_array *ref_prefixes)
{
	struct bundle_transport_data *data = transport->data;
	struct ref *result = NULL;
	int i;

	if (for_push)
		return NULL;

	data->get_refs_from_bundle_called = 1;

	if (data->fd > 0)
		FUNC2(data->fd);
	data->fd = FUNC5(transport->url, &data->header);
	if (data->fd < 0)
		FUNC3(FUNC0("could not read bundle '%s'"), transport->url);
	for (i = 0; i < data->header.references.nr; i++) {
		struct ref_list_entry *e = data->header.references.list + i;
		struct ref *ref = FUNC1(e->name);
		FUNC4(&ref->old_oid, &e->oid);
		ref->next = result;
		result = ref;
	}
	return result;
}