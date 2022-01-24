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
struct string_list_item {int /*<<< orphan*/  util; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int REF_ISSYMREF ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 struct string_list_item* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const char *refname, const struct object_id *oid,
		       int flag, void *cb_data)
{
	const char *symref_target;
	struct string_list_item *item;

	if ((flag & REF_ISSYMREF) == 0)
		return 0;
	symref_target = FUNC1(refname, 0, NULL, &flag);
	if (!symref_target || (flag & REF_ISSYMREF) == 0)
		FUNC0("'%s' is a symref but it is not?", refname);
	item = FUNC2(cb_data, FUNC3(refname));
	item->util = FUNC4(FUNC3(symref_target));
	return 0;
}