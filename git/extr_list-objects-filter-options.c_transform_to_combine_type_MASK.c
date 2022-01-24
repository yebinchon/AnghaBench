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
struct list_objects_filter_options {scalar_t__ choice; int sub_alloc; int sub_nr; int /*<<< orphan*/  filter_spec; struct list_objects_filter_options* sub; } ;

/* Variables and functions */
 scalar_t__ LOFC_COMBINE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct list_objects_filter_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct list_objects_filter_options*) ; 
 int /*<<< orphan*/  FUNC3 (struct list_objects_filter_options*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct list_objects_filter_options* FUNC6 (int const,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(
	struct list_objects_filter_options *filter_options)
{
	FUNC0(filter_options->choice);
	if (filter_options->choice == LOFC_COMBINE)
		return;
	{
		const int initial_sub_alloc = 2;
		struct list_objects_filter_options *sub_array =
			FUNC6(initial_sub_alloc, sizeof(*sub_array));
		sub_array[0] = *filter_options;
		FUNC3(filter_options, 0, sizeof(*filter_options));
		filter_options->sub = sub_array;
		filter_options->sub_alloc = initial_sub_alloc;
	}
	filter_options->sub_nr = 1;
	filter_options->choice = LOFC_COMBINE;
	FUNC4(&filter_options->filter_spec, FUNC7("combine:"));
	FUNC1(
		filter_options,
		FUNC2(&filter_options->sub[0]));
	/*
	 * We don't need the filter_spec strings for subfilter specs, only the
	 * top level.
	 */
	FUNC5(&filter_options->sub[0].filter_spec, /*free_util=*/0);
}