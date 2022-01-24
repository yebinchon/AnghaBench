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
struct tree_desc {int /*<<< orphan*/  entry; scalar_t__ size; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned short) ; 
 int FUNC1 (struct repository*,struct object_id*,char const*,struct object_id*,unsigned short*) ; 
 int FUNC2 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id*,struct object_id*) ; 
 int FUNC4 (char const*) ; 
 struct object_id* FUNC5 (struct tree_desc*,char const**,unsigned short*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tree_desc*) ; 

__attribute__((used)) static int FUNC8(struct repository *r, struct tree_desc *t,
			   const char *name, struct object_id *result,
			   unsigned short *mode)
{
	int namelen = FUNC4(name);
	while (t->size) {
		const char *entry;
		struct object_id oid;
		int entrylen, cmp;

		FUNC3(&oid, FUNC5(t, &entry, mode));
		entrylen = FUNC6(&t->entry);
		FUNC7(t);
		if (entrylen > namelen)
			continue;
		cmp = FUNC2(name, entry, entrylen);
		if (cmp > 0)
			continue;
		if (cmp < 0)
			break;
		if (entrylen == namelen) {
			FUNC3(result, &oid);
			return 0;
		}
		if (name[entrylen] != '/')
			continue;
		if (!FUNC0(*mode))
			break;
		if (++entrylen == namelen) {
			FUNC3(result, &oid);
			return 0;
		}
		return FUNC1(r, &oid, name + entrylen, result, mode);
	}
	return -1;
}