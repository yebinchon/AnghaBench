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
struct strbuf {int dummy; } ;
struct pathspec_item {unsigned int magic; char* match; int len; int prefix; int nowildcard_len; int /*<<< orphan*/  flags; void* original; scalar_t__ attr_match_nr; int /*<<< orphan*/ * attr_match; int /*<<< orphan*/ * attr_check; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int PATHSPEC_FROMTOP ; 
 unsigned int PATHSPEC_GLOB ; 
 unsigned int PATHSPEC_LITERAL ; 
 unsigned int PATHSPEC_LITERAL_PATH ; 
 int /*<<< orphan*/  PATHSPEC_ONESTAR ; 
 unsigned int PATHSPEC_PREFIX_ORIGIN ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,...) ; 
 unsigned int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char*) ; 
 char* FUNC6 (unsigned int*,int*,struct pathspec_item*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int,unsigned int) ; 
 char* FUNC8 (char const*,int,int*,char const*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,char*) ; 
 void* FUNC11 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int FUNC12 (char*) ; 
 void* FUNC13 (char const*) ; 

__attribute__((used)) static void FUNC14(struct pathspec_item *item, unsigned flags,
			       const char *prefix, int prefixlen,
			       const char *elt)
{
	unsigned magic = 0, element_magic = 0;
	const char *copyfrom = elt;
	char *match;
	int pathspec_prefix = -1;

	item->attr_check = NULL;
	item->attr_match = NULL;
	item->attr_match_nr = 0;

	/* PATHSPEC_LITERAL_PATH ignores magic */
	if (flags & PATHSPEC_LITERAL_PATH) {
		magic = PATHSPEC_LITERAL;
	} else {
		copyfrom = FUNC6(&element_magic,
					       &pathspec_prefix,
					       item,
					       elt);
		magic |= element_magic;
		magic |= FUNC3(element_magic);
	}

	item->magic = magic;

	if (pathspec_prefix >= 0 &&
	    (prefixlen || (prefix && *prefix)))
		FUNC0("'prefix' magic is supposed to be used at worktree's root");

	if ((magic & PATHSPEC_LITERAL) && (magic & PATHSPEC_GLOB))
		FUNC2(FUNC1("%s: 'literal' and 'glob' are incompatible"), elt);

	/* Create match string which will be used for pathspec matching */
	if (pathspec_prefix >= 0) {
		match = FUNC13(copyfrom);
		prefixlen = pathspec_prefix;
	} else if (magic & PATHSPEC_FROMTOP) {
		match = FUNC13(copyfrom);
		prefixlen = 0;
	} else {
		match = FUNC8(prefix, prefixlen,
					   &prefixlen, copyfrom);
		if (!match)
			FUNC2(FUNC1("%s: '%s' is outside repository"), elt, copyfrom);
	}

	item->match = match;
	item->len = FUNC12(item->match);
	item->prefix = prefixlen;

	/*
	 * Prefix the pathspec (keep all magic) and assign to
	 * original. Useful for passing to another command.
	 */
	if ((flags & PATHSPEC_PREFIX_ORIGIN) &&
	    !FUNC4()) {
		struct strbuf sb = STRBUF_INIT;

		/* Preserve the actual prefix length of each pattern */
		FUNC7(&sb, prefixlen, element_magic);

		FUNC10(&sb, match);
		item->original = FUNC11(&sb, NULL);
	} else {
		item->original = FUNC13(elt);
	}

	if (magic & PATHSPEC_LITERAL) {
		item->nowildcard_len = item->len;
	} else {
		item->nowildcard_len = FUNC9(item->match);
		if (item->nowildcard_len < prefixlen)
			item->nowildcard_len = prefixlen;
	}

	item->flags = 0;
	if (magic & PATHSPEC_GLOB) {
		/*
		 * FIXME: should we enable ONESTAR in _GLOB for
		 * pattern "* * / * . c"?
		 */
	} else {
		if (item->nowildcard_len < item->len &&
		    item->match[item->nowildcard_len] == '*' &&
		    FUNC5(item->match + item->nowildcard_len + 1))
			item->flags |= PATHSPEC_ONESTAR;
	}

	/* sanity checks, pathspec matchers assume these are sane */
	if (item->nowildcard_len > item->len ||
	    item->prefix         > item->len) {
		FUNC0("error initializing pathspec_item");
	}
}