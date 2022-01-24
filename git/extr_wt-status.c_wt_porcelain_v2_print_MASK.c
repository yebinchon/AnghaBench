#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wt_status_change_data {scalar_t__ stagemask; } ;
struct TYPE_6__ {int nr; struct string_list_item* items; } ;
struct TYPE_5__ {int nr; struct string_list_item* items; } ;
struct TYPE_4__ {int nr; struct string_list_item* items; } ;
struct wt_status {TYPE_3__ ignored; TYPE_2__ untracked; TYPE_1__ change; scalar_t__ show_branch; } ;
struct string_list_item {struct wt_status_change_data* util; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct string_list_item*,struct wt_status*) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list_item*,struct wt_status*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct wt_status*) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list_item*,struct wt_status*) ; 

__attribute__((used)) static void FUNC4(struct wt_status *s)
{
	struct wt_status_change_data *d;
	struct string_list_item *it;
	int i;

	if (s->show_branch)
		FUNC2(s);

	for (i = 0; i < s->change.nr; i++) {
		it = &(s->change.items[i]);
		d = it->util;
		if (!d->stagemask)
			FUNC0(it, s);
	}

	for (i = 0; i < s->change.nr; i++) {
		it = &(s->change.items[i]);
		d = it->util;
		if (d->stagemask)
			FUNC3(it, s);
	}

	for (i = 0; i < s->untracked.nr; i++) {
		it = &(s->untracked.items[i]);
		FUNC1(it, s, '?');
	}

	for (i = 0; i < s->ignored.nr; i++) {
		it = &(s->ignored.items[i]);
		FUNC1(it, s, '!');
	}
}