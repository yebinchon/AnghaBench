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
struct snapshot {char* start; char* eof; } ;

/* Variables and functions */
 int FUNC0 (char const*,char const*) ; 
 char* FUNC1 (char const*,char const*) ; 
 char* FUNC2 (char const*,char const*) ; 

__attribute__((used)) static const char *FUNC3(struct snapshot *snapshot,
					   const char *refname, int mustexist)
{
	/*
	 * This is not *quite* a garden-variety binary search, because
	 * the data we're searching is made up of records, and we
	 * always need to find the beginning of a record to do a
	 * comparison. A "record" here is one line for the reference
	 * itself and zero or one peel lines that start with '^'. Our
	 * loop invariant is described in the next two comments.
	 */

	/*
	 * A pointer to the character at the start of a record whose
	 * preceding records all have reference names that come
	 * *before* `refname`.
	 */
	const char *lo = snapshot->start;

	/*
	 * A pointer to a the first character of a record whose
	 * reference name comes *after* `refname`.
	 */
	const char *hi = snapshot->eof;

	while (lo != hi) {
		const char *mid, *rec;
		int cmp;

		mid = lo + (hi - lo) / 2;
		rec = FUNC2(lo, mid);
		cmp = FUNC0(rec, refname);
		if (cmp < 0) {
			lo = FUNC1(mid, hi);
		} else if (cmp > 0) {
			hi = rec;
		} else {
			return rec;
		}
	}

	if (mustexist)
		return NULL;
	else
		return lo;
}