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
struct strbuf {int len; int /*<<< orphan*/  buf; } ;
struct lazy_entry {int dummy; } ;
struct index_state {TYPE_1__** cache; } ;
struct dir_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct index_state*,int,int,struct dir_entry*,struct strbuf*,struct lazy_entry*) ; 
 struct dir_entry* FUNC3 (struct index_state*,struct dir_entry*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(
	struct index_state *istate,
	int k_start,
	int k_end,
	struct dir_entry *parent,
	struct strbuf *prefix,
	struct lazy_entry *lazy_entries,
	struct dir_entry **dir_new_out)
{
	int rc, k;
	int input_prefix_len = prefix->len;
	struct dir_entry *dir_new;

	dir_new = FUNC3(istate, parent, prefix);

	FUNC4(prefix, '/');

	/*
	 * Scan forward in the index array for index entries having the same
	 * path prefix (that are also in this directory).
	 */
	if (k_start + 1 >= k_end)
		k = k_end;
	else if (FUNC6(istate->cache[k_start + 1]->name, prefix->buf, prefix->len) > 0)
		k = k_start + 1;
	else if (FUNC6(istate->cache[k_end - 1]->name, prefix->buf, prefix->len) == 0)
		k = k_end;
	else {
		int begin = k_start;
		int end = k_end;
		FUNC0(begin >= 0);
		while (begin < end) {
			int mid = begin + ((end - begin) >> 1);
			int cmp = FUNC6(istate->cache[mid]->name, prefix->buf, prefix->len);
			if (cmp == 0) /* mid has same prefix; look in second part */
				begin = mid + 1;
			else if (cmp > 0) /* mid is past group; look in first part */
				end = mid;
			else
				FUNC1("cache entry out of order");
		}
		k = begin;
	}

	/*
	 * Recurse and process what we can of this subset [k_start, k).
	 */
	rc = FUNC2(istate, k_start, k, dir_new, prefix, lazy_entries);

	FUNC5(prefix, input_prefix_len);

	*dir_new_out = dir_new;
	return rc;
}