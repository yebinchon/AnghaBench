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
struct pattern_list {scalar_t__ nr; struct path_pattern** patterns; int /*<<< orphan*/  alloc; } ;
struct path_pattern {char const* pattern; int patternlen; int nowildcardlen; char const* base; int baselen; unsigned int flags; int srcpos; struct pattern_list* pl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct path_pattern**,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct path_pattern*,struct path_pattern*,char const*,int) ; 
 unsigned int PATTERN_FLAG_MUSTBEDIR ; 
 int /*<<< orphan*/  FUNC2 (char const**,int*,unsigned int*,int*) ; 
 struct path_pattern* FUNC3 (int) ; 

void FUNC4(const char *string, const char *base,
		 int baselen, struct pattern_list *pl, int srcpos)
{
	struct path_pattern *pattern;
	int patternlen;
	unsigned flags;
	int nowildcardlen;

	FUNC2(&string, &patternlen, &flags, &nowildcardlen);
	if (flags & PATTERN_FLAG_MUSTBEDIR) {
		FUNC1(pattern, pattern, string, patternlen);
	} else {
		pattern = FUNC3(sizeof(*pattern));
		pattern->pattern = string;
	}
	pattern->patternlen = patternlen;
	pattern->nowildcardlen = nowildcardlen;
	pattern->base = base;
	pattern->baselen = baselen;
	pattern->flags = flags;
	pattern->srcpos = srcpos;
	FUNC0(pl->patterns, pl->nr + 1, pl->alloc);
	pl->patterns[pl->nr++] = pattern;
	pattern->pl = pl;
}