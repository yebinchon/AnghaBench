#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wt_status_change_data {int /*<<< orphan*/  stagemask; } ;
struct TYPE_2__ {int nr; struct string_list_item* items; } ;
struct wt_status {TYPE_1__ change; } ;
struct string_list_item {struct wt_status_change_data* util; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wt_status*) ; 
 int /*<<< orphan*/  FUNC1 (struct wt_status*,struct string_list_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct wt_status*) ; 

__attribute__((used)) static void FUNC3(struct wt_status *s)
{
	int shown_header = 0;
	int i;

	for (i = 0; i < s->change.nr; i++) {
		struct wt_status_change_data *d;
		struct string_list_item *it;
		it = &(s->change.items[i]);
		d = it->util;
		if (!d->stagemask)
			continue;
		if (!shown_header) {
			FUNC2(s);
			shown_header = 1;
		}
		FUNC1(s, it);
	}
	if (shown_header)
		FUNC0(s);

}