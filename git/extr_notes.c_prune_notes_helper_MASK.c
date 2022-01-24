#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct object_id {int /*<<< orphan*/  hash; } ;
struct note_delete_list {int /*<<< orphan*/  sha1; struct note_delete_list* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct object_id const*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(const struct object_id *object_oid,
		const struct object_id *note_oid, char *note_path,
		void *cb_data)
{
	struct note_delete_list **l = (struct note_delete_list **) cb_data;
	struct note_delete_list *n;

	if (FUNC0(object_oid))
		return 0; /* nothing to do for this note */

	/* failed to find object => prune this note */
	n = (struct note_delete_list *) FUNC1(sizeof(*n));
	n->next = *l;
	n->sha1 = object_oid->hash;
	*l = n;
	return 0;
}