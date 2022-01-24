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
struct strbuf {int len; char const* buf; } ;
struct pathspec_item {char* match; int len; int magic; int nowildcard_len; scalar_t__ attr_match_nr; } ;
struct pathspec {int nr; int magic; int max_depth; scalar_t__ recursive; scalar_t__ recurse_submodules; struct pathspec_item* items; scalar_t__ has_wildcard; } ;
struct name_entry {char* path; int /*<<< orphan*/  mode; } ;
struct index_state {int dummy; } ;
typedef  enum interesting { ____Placeholder_interesting } interesting ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pathspec const*,int) ; 
 int PATHSPEC_ATTR ; 
 int PATHSPEC_EXCLUDE ; 
 int PATHSPEC_FROMTOP ; 
 int PATHSPEC_GLOB ; 
 int PATHSPEC_ICASE ; 
 int PATHSPEC_LITERAL ; 
 int PATHSPEC_MAXDEPTH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int all_entries_interesting ; 
 int all_entries_not_interesting ; 
 int /*<<< orphan*/  FUNC3 (struct pathspec_item const*,char const*,char const*,int) ; 
 int entry_interesting ; 
 int entry_not_interesting ; 
 int /*<<< orphan*/  FUNC4 (struct pathspec_item const*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pathspec_item const*,char const*,char const*,int) ; 
 scalar_t__ FUNC6 (struct pathspec_item const*,struct name_entry const*,int,char const*,int,int*) ; 
 int FUNC7 (struct index_state*,char*,int,struct pathspec_item const*) ; 
 int /*<<< orphan*/  FUNC8 (struct pathspec_item const*,char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct pathspec_item const*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,int) ; 
 int FUNC12 (struct name_entry const*) ; 
 scalar_t__ FUNC13 (char const*,int,int,int) ; 

__attribute__((used)) static enum interesting FUNC14(struct index_state *istate,
				 const struct name_entry *entry,
				 struct strbuf *base, int base_offset,
				 const struct pathspec *ps,
				 int exclude)
{
	int i;
	int pathlen, baselen = base->len - base_offset;
	enum interesting never_interesting = ps->has_wildcard ?
		entry_not_interesting : all_entries_not_interesting;

	FUNC0(ps,
		       PATHSPEC_FROMTOP |
		       PATHSPEC_MAXDEPTH |
		       PATHSPEC_LITERAL |
		       PATHSPEC_GLOB |
		       PATHSPEC_ICASE |
		       PATHSPEC_EXCLUDE |
		       PATHSPEC_ATTR);

	if (!ps->nr) {
		if (!ps->recursive ||
		    !(ps->magic & PATHSPEC_MAXDEPTH) ||
		    ps->max_depth == -1)
			return all_entries_interesting;
		return FUNC13(base->buf + base_offset, baselen,
				    !!FUNC1(entry->mode),
				    ps->max_depth) ?
			entry_interesting : entry_not_interesting;
	}

	pathlen = FUNC12(entry);

	for (i = ps->nr - 1; i >= 0; i--) {
		const struct pathspec_item *item = ps->items+i;
		const char *match = item->match;
		const char *base_str = base->buf + base_offset;
		int matchlen = item->len, matched = 0;

		if ((!exclude &&   item->magic & PATHSPEC_EXCLUDE) ||
		    ( exclude && !(item->magic & PATHSPEC_EXCLUDE)))
			continue;

		if (baselen >= matchlen) {
			/* If it doesn't match, move along... */
			if (!FUNC5(item, base_str, match, matchlen))
				goto match_wildcards;

			if (!ps->recursive ||
			    !(ps->magic & PATHSPEC_MAXDEPTH) ||
			    ps->max_depth == -1) {
				if (!item->attr_match_nr)
					return all_entries_interesting;
				else
					goto interesting;
			}

			if (FUNC13(base_str + matchlen + 1,
					 baselen - matchlen - 1,
					 !!FUNC1(entry->mode),
					 ps->max_depth))
				goto interesting;
			else
				return entry_not_interesting;
		}

		/* Either there must be no base, or the base must match. */
		if (baselen == 0 || !FUNC3(item, base_str, match, baselen)) {
			if (FUNC6(item, entry, pathlen,
					match + baselen, matchlen - baselen,
					&never_interesting))
				goto interesting;

			if (item->nowildcard_len < item->len) {
				if (!FUNC4(item, match + baselen, entry->path,
						 item->nowildcard_len - baselen))
					goto interesting;

				/*
				 * Match all directories. We'll try to
				 * match files later on.
				 */
				if (ps->recursive && FUNC1(entry->mode))
					return entry_interesting;

				/*
				 * When matching against submodules with
				 * wildcard characters, ensure that the entry
				 * at least matches up to the first wild
				 * character.  More accurate matching can then
				 * be performed in the submodule itself.
				 */
				if (ps->recurse_submodules &&
				    FUNC2(entry->mode) &&
				    !FUNC9(item, match + baselen,
						entry->path,
						item->nowildcard_len - baselen))
					goto interesting;
			}

			continue;
		}

match_wildcards:
		if (item->nowildcard_len == item->len)
			continue;

		if (item->nowildcard_len &&
		    !FUNC8(item, base_str, baselen, &matched))
			continue;

		/*
		 * Concatenate base and entry->path into one and do
		 * fnmatch() on it.
		 *
		 * While we could avoid concatenation in certain cases
		 * [1], which saves a memcpy and potentially a
		 * realloc, it turns out not worth it. Measurement on
		 * linux-2.6 does not show any clear improvements,
		 * partly because of the nowildcard_len optimization
		 * in git_fnmatch(). Avoid micro-optimizations here.
		 *
		 * [1] if match_wildcard_base() says the base
		 * directory is already matched, we only need to match
		 * the rest, which is shorter so _in theory_ faster.
		 */

		FUNC10(base, entry->path, pathlen);

		if (!FUNC4(item, match, base->buf + base_offset,
				 item->nowildcard_len)) {
			FUNC11(base, base_offset + baselen);
			goto interesting;
		}

		/*
		 * When matching against submodules with
		 * wildcard characters, ensure that the entry
		 * at least matches up to the first wild
		 * character.  More accurate matching can then
		 * be performed in the submodule itself.
		 */
		if (ps->recurse_submodules && FUNC2(entry->mode) &&
		    !FUNC9(item, match, base->buf + base_offset,
				item->nowildcard_len)) {
			FUNC11(base, base_offset + baselen);
			goto interesting;
		}

		FUNC11(base, base_offset + baselen);

		/*
		 * Match all directories. We'll try to match files
		 * later on.
		 * max_depth is ignored but we may consider support it
		 * in future, see
		 * https://public-inbox.org/git/7vmxo5l2g4.fsf@alter.siamese.dyndns.org/
		 */
		if (ps->recursive && FUNC1(entry->mode))
			return entry_interesting;
		continue;
interesting:
		if (item->attr_match_nr) {
			int ret;

			/*
			 * Must not return all_entries_not_interesting
			 * prematurely. We do not know if all entries do not
			 * match some attributes with current attr API.
			 */
			never_interesting = entry_not_interesting;

			/*
			 * Consider all directories interesting (because some
			 * of those files inside may match some attributes
			 * even though the parent dir does not)
			 *
			 * FIXME: attributes _can_ match directories and we
			 * can probably return all_entries_interesting or
			 * all_entries_not_interesting here if matched.
			 */
			if (FUNC1(entry->mode))
				return entry_interesting;

			FUNC10(base, entry->path, pathlen);
			ret = FUNC7(istate, base->buf + base_offset,
						   base->len - base_offset, item);
			FUNC11(base, base_offset + baselen);
			if (!ret)
				continue;
		}
		return entry_interesting;
	}
	return never_interesting; /* No matches */
}