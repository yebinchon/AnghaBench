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
struct line_log_data {int /*<<< orphan*/  ranges; struct line_log_data* next; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct line_log_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct line_log_data* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct line_log_data *FUNC6(struct line_log_data *a,
						 struct line_log_data *b)
{
	struct line_log_data *head = NULL, **pp = &head;

	while (a || b) {
		struct line_log_data *src;
		struct line_log_data *src2 = NULL;
		struct line_log_data *d;
		int cmp;
		if (!a)
			cmp = 1;
		else if (!b)
			cmp = -1;
		else
			cmp = FUNC3(a->path, b->path);
		if (cmp < 0) {
			src = a;
			a = a->next;
		} else if (cmp == 0) {
			src = a;
			a = a->next;
			src2 = b;
			b = b->next;
		} else {
			src = b;
			b = b->next;
		}
		d = FUNC4(sizeof(struct line_log_data));
		FUNC0(d);
		d->path = FUNC5(src->path);
		*pp = d;
		pp = &d->next;
		if (src2)
			FUNC2(&d->ranges, &src->ranges, &src2->ranges);
		else
			FUNC1(&d->ranges, &src->ranges);
	}

	return head;
}