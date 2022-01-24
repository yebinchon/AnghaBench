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
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct tree {TYPE_1__ object; } ;
struct string_list_item {struct stage_data* util; } ;
struct string_list {int dummy; } ;
struct stage_data {int /*<<< orphan*/ * stages; } ;
struct repository {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct repository*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 struct string_list_item* FUNC1 (struct string_list*,char const*) ; 
 struct stage_data* FUNC2 (int,int) ; 

__attribute__((used)) static struct stage_data *FUNC3(struct repository *r,
		const char *path,
		struct tree *o, struct tree *a, struct tree *b,
		struct string_list *entries)
{
	struct string_list_item *item;
	struct stage_data *e = FUNC2(1, sizeof(struct stage_data));
	FUNC0(r, &o->object.oid, path, &e->stages[1]);
	FUNC0(r, &a->object.oid, path, &e->stages[2]);
	FUNC0(r, &b->object.oid, path, &e->stages[3]);
	item = FUNC1(entries, path);
	item->util = e;
	return e;
}