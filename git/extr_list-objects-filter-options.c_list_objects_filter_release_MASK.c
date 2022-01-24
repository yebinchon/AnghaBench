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
struct list_objects_filter_options {size_t sub_nr; struct list_objects_filter_options* sub; struct list_objects_filter_options* sparse_oid_name; int /*<<< orphan*/  filter_spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_objects_filter_options*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_objects_filter_options*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(
	struct list_objects_filter_options *filter_options)
{
	size_t sub;

	if (!filter_options)
		return;
	FUNC2(&filter_options->filter_spec, /*free_util=*/0);
	FUNC0(filter_options->sparse_oid_name);
	for (sub = 0; sub < filter_options->sub_nr; sub++)
		FUNC3(&filter_options->sub[sub]);
	FUNC0(filter_options->sub);
	FUNC1(filter_options, 0, sizeof(*filter_options));
}