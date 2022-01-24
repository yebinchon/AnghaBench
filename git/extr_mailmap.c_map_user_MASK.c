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
struct string_list_item {scalar_t__ util; } ;
struct string_list {scalar_t__ nr; } ;
struct mailmap_info {char* name; char* email; } ;
struct mailmap_entry {struct string_list namemap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 struct string_list_item* FUNC2 (struct string_list*,char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 

int FUNC4(struct string_list *map,
	     const char **email, size_t *emaillen,
	     const char **name, size_t *namelen)
{
	struct string_list_item *item;
	struct mailmap_entry *me;

	FUNC0("map_user: map '%.*s' <%.*s>\n",
		 (int)*namelen, FUNC1(*name),
		 (int)*emaillen, FUNC1(*email));

	item = FUNC2(map, *email, *emaillen);
	if (item != NULL) {
		me = (struct mailmap_entry *)item->util;
		if (me->namemap.nr) {
			/*
			 * The item has multiple items, so we'll look up on
			 * name too. If the name is not found, we choose the
			 * simple entry.
			 */
			struct string_list_item *subitem;
			subitem = FUNC2(&me->namemap, *name, *namelen);
			if (subitem)
				item = subitem;
		}
	}
	if (item != NULL) {
		struct mailmap_info *mi = (struct mailmap_info *)item->util;
		if (mi->name == NULL && mi->email == NULL) {
			FUNC0("map_user:  -- (no simple mapping)\n");
			return 0;
		}
		if (mi->email) {
				*email = mi->email;
				*emaillen = FUNC3(*email);
		}
		if (mi->name) {
				*name = mi->name;
				*namelen = FUNC3(*name);
		}
		FUNC0("map_user:  to '%.*s' <%.*s>\n",
			 (int)*namelen, FUNC1(*name),
			 (int)*emaillen, FUNC1(*email));
		return 1;
	}
	FUNC0("map_user:  --\n");
	return 0;
}