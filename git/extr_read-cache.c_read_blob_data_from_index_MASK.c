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
struct index_state {int cache_nr; TYPE_1__** cache; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_2__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int OBJ_BLOB ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (struct index_state const*,char const*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC5 (char const*) ; 

void *FUNC6(const struct index_state *istate,
				const char *path, unsigned long *size)
{
	int pos, len;
	unsigned long sz;
	enum object_type type;
	void *data;

	len = FUNC5(path);
	pos = FUNC2(istate, path, len);
	if (pos < 0) {
		/*
		 * We might be in the middle of a merge, in which
		 * case we would read stage #2 (ours).
		 */
		int i;
		for (i = -pos - 1;
		     (pos < 0 && i < istate->cache_nr &&
		      !FUNC4(istate->cache[i]->name, path));
		     i++)
			if (FUNC0(istate->cache[i]) == 2)
				pos = i;
	}
	if (pos < 0)
		return NULL;
	data = FUNC3(&istate->cache[pos]->oid, &type, &sz);
	if (!data || type != OBJ_BLOB) {
		FUNC1(data);
		return NULL;
	}
	if (size)
		*size = sz;
	return data;
}