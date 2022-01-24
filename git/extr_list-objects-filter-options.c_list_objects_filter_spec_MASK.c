#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct TYPE_6__ {int nr; TYPE_1__* items; } ;
struct list_objects_filter_options {TYPE_2__ filter_spec; } ;
struct TYPE_5__ {char const* string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

const char *FUNC5(struct list_objects_filter_options *filter)
{
	if (!filter->filter_spec.nr)
		FUNC0("no filter_spec available for this filter");
	if (filter->filter_spec.nr != 1) {
		struct strbuf concatted = STRBUF_INIT;
		FUNC1(
			&concatted, "", &filter->filter_spec);
		FUNC4(&filter->filter_spec, /*free_util=*/0);
		FUNC3(
			&filter->filter_spec, FUNC2(&concatted, NULL));
	}

	return filter->filter_spec.items[0].string;
}