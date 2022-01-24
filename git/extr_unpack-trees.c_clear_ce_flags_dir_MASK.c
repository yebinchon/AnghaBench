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
struct strbuf {scalar_t__ len; int /*<<< orphan*/  buf; } ;
struct pattern_list {int dummy; } ;
struct index_state {int dummy; } ;
struct cache_entry {int /*<<< orphan*/  name; } ;
typedef  enum pattern_match_result { ____Placeholder_pattern_match_result } pattern_match_result ;

/* Variables and functions */
 int DT_DIR ; 
 int UNDECIDED ; 
 int FUNC0 (struct index_state*,struct cache_entry**,int,struct strbuf*,int,int,struct pattern_list*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*,int*,struct pattern_list*,struct index_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct index_state *istate,
			      struct cache_entry **cache, int nr,
			      struct strbuf *prefix,
			      char *basename,
			      int select_mask, int clear_mask,
			      struct pattern_list *pl,
			      enum pattern_match_result default_match)
{
	struct cache_entry **cache_end;
	int dtype = DT_DIR;
	int rc;
	enum pattern_match_result ret;
	ret = FUNC1(prefix->buf, prefix->len,
					basename, &dtype, pl, istate);

	FUNC2(prefix, '/');

	/* If undecided, use matching result of parent dir in defval */
	if (ret == UNDECIDED)
		ret = default_match;

	for (cache_end = cache; cache_end != cache + nr; cache_end++) {
		struct cache_entry *ce = *cache_end;
		if (FUNC4(ce->name, prefix->buf, prefix->len))
			break;
	}

	/*
	 * TODO: check pl, if there are no patterns that may conflict
	 * with ret (iow, we know in advance the incl/excl
	 * decision for the entire directory), clear flag here without
	 * calling clear_ce_flags_1(). That function will call
	 * the expensive path_matches_pattern_list() on every entry.
	 */
	rc = FUNC0(istate, cache, cache_end - cache,
			      prefix,
			      select_mask, clear_mask,
			      pl, ret);
	FUNC3(prefix, prefix->len - 1);
	return rc;
}