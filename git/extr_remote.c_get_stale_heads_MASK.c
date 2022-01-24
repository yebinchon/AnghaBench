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
struct string_list {int dummy; } ;
struct stale_heads_info {struct refspec* rs; struct ref** stale_refs_tail; struct string_list* ref_names; } ;
struct refspec {int dummy; } ;
struct ref {int /*<<< orphan*/  name; struct ref* next; } ;

/* Variables and functions */
 struct string_list STRING_LIST_INIT_NODUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct stale_heads_info*) ; 
 int /*<<< orphan*/  get_stale_heads_cb ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*) ; 

struct ref *FUNC4(struct refspec *rs, struct ref *fetch_map)
{
	struct ref *ref, *stale_refs = NULL;
	struct string_list ref_names = STRING_LIST_INIT_NODUP;
	struct stale_heads_info info;

	info.ref_names = &ref_names;
	info.stale_refs_tail = &stale_refs;
	info.rs = rs;
	for (ref = fetch_map; ref; ref = ref->next)
		FUNC1(&ref_names, ref->name);
	FUNC3(&ref_names);
	FUNC0(get_stale_heads_cb, &info);
	FUNC2(&ref_names, 0);
	return stale_refs;
}