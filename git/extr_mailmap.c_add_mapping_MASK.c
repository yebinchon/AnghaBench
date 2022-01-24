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
struct string_list_item {struct mailmap_info* util; } ;
struct string_list {int strdup_strings; int /*<<< orphan*/  cmp; } ;
struct mailmap_info {struct string_list namemap; void* email; void* name; } ;
struct mailmap_entry {struct string_list namemap; void* email; void* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  namemap_cmp ; 
 struct string_list_item* FUNC3 (struct string_list*,char*) ; 
 void* FUNC4 (int,int) ; 
 void* FUNC5 (char*) ; 
 void* FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(struct string_list *map,
			char *new_name, char *new_email,
			char *old_name, char *old_email)
{
	struct mailmap_entry *me;
	struct string_list_item *item;

	if (old_email == NULL) {
		old_email = new_email;
		new_email = NULL;
	}

	item = FUNC3(map, old_email);
	if (item->util) {
		me = (struct mailmap_entry *)item->util;
	} else {
		me = FUNC4(1, sizeof(struct mailmap_entry));
		me->namemap.strdup_strings = 1;
		me->namemap.cmp = namemap_cmp;
		item->util = me;
	}

	if (old_name == NULL) {
		FUNC0("mailmap: adding (simple) entry for '%s'\n", old_email);

		/* Replace current name and new email for simple entry */
		if (new_name) {
			FUNC2(me->name);
			me->name = FUNC5(new_name);
		}
		if (new_email) {
			FUNC2(me->email);
			me->email = FUNC5(new_email);
		}
	} else {
		struct mailmap_info *mi = FUNC4(1, sizeof(struct mailmap_info));
		FUNC0("mailmap: adding (complex) entry for '%s'\n", old_email);
		mi->name = FUNC6(new_name);
		mi->email = FUNC6(new_email);
		FUNC3(&me->namemap, old_name)->util = mi;
	}

	FUNC0("mailmap:  '%s' <%s> -> '%s' <%s>\n",
		 FUNC1(old_name), old_email,
		 FUNC1(new_name), FUNC1(new_email));
}