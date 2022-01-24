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
struct string_list {size_t nr; TYPE_1__* items; } ;
struct strbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct string_list *refnames,
				 struct strbuf *err)
{
	size_t i, n = refnames->nr;

	FUNC2(err);

	for (i = 1; i < n; i++) {
		int cmp = FUNC4(refnames->items[i - 1].string,
				 refnames->items[i].string);

		if (!cmp) {
			FUNC3(err,
				    FUNC1("multiple updates for ref '%s' not allowed"),
				    refnames->items[i].string);
			return 1;
		} else if (cmp > 0) {
			FUNC0("ref_update_reject_duplicates() received unsorted list");
		}
	}
	return 0;
}