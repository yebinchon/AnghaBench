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
struct pathspec_item {int flags; int magic; } ;

/* Variables and functions */
 int PATHSPEC_GLOB ; 
 int PATHSPEC_ICASE ; 
 int PATHSPEC_ONESTAR ; 
 int WM_CASEFOLD ; 
 int WM_NOMATCH ; 
 int WM_PATHNAME ; 
 scalar_t__ FUNC0 (struct pathspec_item const*,char const*,char const*) ; 
 scalar_t__ FUNC1 (struct pathspec_item const*,char const*,char const*,int) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*,char const*,int) ; 

int FUNC4(const struct pathspec_item *item,
		const char *pattern, const char *string,
		int prefix)
{
	if (prefix > 0) {
		if (FUNC1(item, pattern, string, prefix))
			return WM_NOMATCH;
		pattern += prefix;
		string += prefix;
	}
	if (item->flags & PATHSPEC_ONESTAR) {
		int pattern_len = FUNC2(++pattern);
		int string_len = FUNC2(string);
		return string_len < pattern_len ||
			FUNC0(item, pattern,
				  string + string_len - pattern_len);
	}
	if (item->magic & PATHSPEC_GLOB)
		return FUNC3(pattern, string,
				 WM_PATHNAME |
				 (item->magic & PATHSPEC_ICASE ? WM_CASEFOLD : 0));
	else
		/* wildmatch has not learned no FNM_PATHNAME mode yet */
		return FUNC3(pattern, string,
				 item->magic & PATHSPEC_ICASE ? WM_CASEFOLD : 0);
}