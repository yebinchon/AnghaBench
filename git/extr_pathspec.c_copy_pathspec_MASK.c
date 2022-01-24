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
struct pathspec_item {int attr_match_nr; char* value; int /*<<< orphan*/  attr_check; struct pathspec_item* attr_match; void* original; void* match; } ;
struct pathspec {int nr; struct pathspec_item* items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pathspec_item*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pathspec_item*,struct pathspec_item*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*) ; 
 char* FUNC4 (char const*) ; 

void FUNC5(struct pathspec *dst, const struct pathspec *src)
{
	int i, j;

	*dst = *src;
	FUNC0(dst->items, dst->nr);
	FUNC1(dst->items, src->items, dst->nr);

	for (i = 0; i < dst->nr; i++) {
		struct pathspec_item *d = &dst->items[i];
		struct pathspec_item *s = &src->items[i];

		d->match = FUNC3(s->match);
		d->original = FUNC3(s->original);

		FUNC0(d->attr_match, d->attr_match_nr);
		FUNC1(d->attr_match, s->attr_match, d->attr_match_nr);
		for (j = 0; j < d->attr_match_nr; j++) {
			const char *value = s->attr_match[j].value;
			d->attr_match[j].value = FUNC4(value);
		}

		d->attr_check = FUNC2(s->attr_check);
	}
}