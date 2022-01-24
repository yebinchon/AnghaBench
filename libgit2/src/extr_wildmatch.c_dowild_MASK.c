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
typedef  char uchar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 scalar_t__ FUNC11 (char) ; 
 int /*<<< orphan*/  FUNC12 (char) ; 
 char NEGATE_CLASS ; 
 char NEGATE_CLASS2 ; 
 int WM_ABORT_ALL ; 
 int WM_ABORT_TO_STARSTAR ; 
 unsigned int WM_CASEFOLD ; 
 int WM_MATCH ; 
 int WM_NOMATCH ; 
 unsigned int WM_PATHNAME ; 
 int /*<<< orphan*/  FUNC13 (char const) ; 
 char* FUNC14 (char*,char) ; 
 char FUNC15 (char) ; 
 char FUNC16 (char) ; 

__attribute__((used)) static int FUNC17(const uchar *p, const uchar *text, unsigned int flags)
{
	uchar p_ch;
	const uchar *pattern = p;

	for ( ; (p_ch = *p) != '\0'; text++, p++) {
		int matched, match_slash, negated;
		uchar t_ch, prev_ch;
		if ((t_ch = *text) == '\0' && p_ch != '*')
			return WM_ABORT_ALL;
		if ((flags & WM_CASEFOLD) && FUNC11(t_ch))
			t_ch = FUNC15(t_ch);
		if ((flags & WM_CASEFOLD) && FUNC11(p_ch))
			p_ch = FUNC15(p_ch);
		switch (p_ch) {
		case '\\':
			/* Literal match with following character.  Note that the test
			 * in "default" handles the p[1] == '\0' failure case. */
			p_ch = *++p;
			/* FALLTHROUGH */
		default:
			if (t_ch != p_ch)
				return WM_NOMATCH;
			continue;
		case '?':
			/* Match anything but '/'. */
			if ((flags & WM_PATHNAME) && t_ch == '/')
				return WM_NOMATCH;
			continue;
		case '*':
			if (*++p == '*') {
				const uchar *prev_p = p - 2;
				while (*++p == '*') {}
				if (!(flags & WM_PATHNAME))
					/* without WM_PATHNAME, '*' == '**' */
					match_slash = 1;
				else if ((prev_p < pattern || *prev_p == '/') &&
				    (*p == '\0' || *p == '/' ||
				     (p[0] == '\\' && p[1] == '/'))) {
					/*
					 * Assuming we already match 'foo/' and are at
					 * <star star slash>, just assume it matches
					 * nothing and go ahead match the rest of the
					 * pattern with the remaining string. This
					 * helps make foo/<*><*>/bar (<> because
					 * otherwise it breaks C comment syntax) match
					 * both foo/bar and foo/a/bar.
					 */
					if (p[0] == '/' &&
					    FUNC17(p + 1, text, flags) == WM_MATCH)
						return WM_MATCH;
					match_slash = 1;
				} else /* WM_PATHNAME is set */
					match_slash = 0;
			} else
				/* without WM_PATHNAME, '*' == '**' */
				match_slash = flags & WM_PATHNAME ? 0 : 1;
			if (*p == '\0') {
				/* Trailing "**" matches everything.  Trailing "*" matches
				 * only if there are no more slash characters. */
				if (!match_slash) {
					if (FUNC14((char*)text, '/') != NULL)
						return WM_NOMATCH;
				}
				return WM_MATCH;
			} else if (!match_slash && *p == '/') {
				/*
				 * _one_ asterisk followed by a slash
				 * with WM_PATHNAME matches the next
				 * directory
				 */
				const char *slash = FUNC14((char*)text, '/');
				if (!slash)
					return WM_NOMATCH;
				text = (const uchar*)slash;
				/* the slash is consumed by the top-level for loop */
				break;
			}
			while (1) {
				if (t_ch == '\0')
					break;
				/*
				 * Try to advance faster when an asterisk is
				 * followed by a literal. We know in this case
				 * that the string before the literal
				 * must belong to "*".
				 * If match_slash is false, do not look past
				 * the first slash as it cannot belong to '*'.
				 */
				if (!FUNC13(*p)) {
					p_ch = *p;
					if ((flags & WM_CASEFOLD) && FUNC11(p_ch))
						p_ch = FUNC15(p_ch);
					while ((t_ch = *text) != '\0' &&
					       (match_slash || t_ch != '/')) {
						if ((flags & WM_CASEFOLD) && FUNC11(t_ch))
							t_ch = FUNC15(t_ch);
						if (t_ch == p_ch)
							break;
						text++;
					}
					if (t_ch != p_ch)
						return WM_NOMATCH;
				}
				if ((matched = FUNC17(p, text, flags)) != WM_NOMATCH) {
					if (!match_slash || matched != WM_ABORT_TO_STARSTAR)
						return matched;
				} else if (!match_slash && t_ch == '/')
					return WM_ABORT_TO_STARSTAR;
				t_ch = *++text;
			}
			return WM_ABORT_ALL;
		case '[':
			p_ch = *++p;
#ifdef NEGATE_CLASS2
			if (p_ch == NEGATE_CLASS2)
				p_ch = NEGATE_CLASS;
#endif
			/* Assign literal 1/0 because of "matched" comparison. */
			negated = p_ch == NEGATE_CLASS ? 1 : 0;
			if (negated) {
				/* Inverted character class. */
				p_ch = *++p;
			}
			prev_ch = 0;
			matched = 0;
			do {
				if (!p_ch)
					return WM_ABORT_ALL;
				if (p_ch == '\\') {
					p_ch = *++p;
					if (!p_ch)
						return WM_ABORT_ALL;
					if (t_ch == p_ch)
						matched = 1;
				} else if (p_ch == '-' && prev_ch && p[1] && p[1] != ']') {
					p_ch = *++p;
					if (p_ch == '\\') {
						p_ch = *++p;
						if (!p_ch)
							return WM_ABORT_ALL;
					}
					if (t_ch <= p_ch && t_ch >= prev_ch)
						matched = 1;
					else if ((flags & WM_CASEFOLD) && FUNC7(t_ch)) {
						uchar t_ch_upper = FUNC16(t_ch);
						if (t_ch_upper <= p_ch && t_ch_upper >= prev_ch)
							matched = 1;
					}
					p_ch = 0; /* This makes "prev_ch" get set to 0. */
				} else if (p_ch == '[' && p[1] == ':') {
					const uchar *s;
					int i;
					for (s = p += 2; (p_ch = *p) && p_ch != ']'; p++) {} /*SHARED ITERATOR*/
					if (!p_ch)
						return WM_ABORT_ALL;
					i = (int)(p - s - 1);
					if (i < 0 || p[-1] != ':') {
						/* Didn't find ":]", so treat like a normal set. */
						p = s - 2;
						p_ch = '[';
						if (t_ch == p_ch)
							matched = 1;
						continue;
					}
					if (FUNC0(s,i, "alnum")) {
						if (FUNC1(t_ch))
							matched = 1;
					} else if (FUNC0(s,i, "alpha")) {
						if (FUNC2(t_ch))
							matched = 1;
					} else if (FUNC0(s,i, "blank")) {
						if (FUNC3(t_ch))
							matched = 1;
					} else if (FUNC0(s,i, "cntrl")) {
						if (FUNC4(t_ch))
							matched = 1;
					} else if (FUNC0(s,i, "digit")) {
						if (FUNC5(t_ch))
							matched = 1;
					} else if (FUNC0(s,i, "graph")) {
						if (FUNC6(t_ch))
							matched = 1;
					} else if (FUNC0(s,i, "lower")) {
						if (FUNC7(t_ch))
							matched = 1;
					} else if (FUNC0(s,i, "print")) {
						if (FUNC8(t_ch))
							matched = 1;
					} else if (FUNC0(s,i, "punct")) {
						if (FUNC9(t_ch))
							matched = 1;
					} else if (FUNC0(s,i, "space")) {
						if (FUNC10(t_ch))
							matched = 1;
					} else if (FUNC0(s,i, "upper")) {
						if (FUNC11(t_ch))
							matched = 1;
						else if ((flags & WM_CASEFOLD) && FUNC7(t_ch))
							matched = 1;
					} else if (FUNC0(s,i, "xdigit")) {
						if (FUNC12(t_ch))
							matched = 1;
					} else /* malformed [:class:] string */
						return WM_ABORT_ALL;
					p_ch = 0; /* This makes "prev_ch" get set to 0. */
				} else if (t_ch == p_ch)
					matched = 1;
			} while (prev_ch = p_ch, (p_ch = *++p) != ']');
			if (matched == negated ||
			    ((flags & WM_PATHNAME) && t_ch == '/'))
				return WM_NOMATCH;
			continue;
		}
	}

	return *text ? WM_NOMATCH : WM_MATCH;
}