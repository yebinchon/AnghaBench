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
struct strbuf {int dummy; } ;
struct list_objects_filter_options {scalar_t__ choice; int /*<<< orphan*/  filter_spec; int /*<<< orphan*/  blob_limit_value; } ;

/* Variables and functions */
 scalar_t__ LOFC_BLOB_LIMIT ; 
 struct strbuf STRBUF_INIT ; 
 char const* FUNC0 (struct list_objects_filter_options*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

const char *FUNC5(
	struct list_objects_filter_options *filter)
{
	if (filter->choice == LOFC_BLOB_LIMIT) {
		struct strbuf expanded_spec = STRBUF_INIT;
		FUNC1(&expanded_spec, "blob:limit=%lu",
			    filter->blob_limit_value);
		FUNC4(&filter->filter_spec, /*free_util=*/0);
		FUNC3(
			&filter->filter_spec,
			FUNC2(&expanded_spec, NULL));
	}

	return FUNC0(filter);
}