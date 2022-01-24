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
struct ll_merge_options {scalar_t__ extra_marker_size; scalar_t__ virtual_ancestor; scalar_t__ renormalize; } ;
struct ll_merge_driver {char const* recursive; int (* fn ) (struct ll_merge_driver const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,struct ll_merge_options const*,int) ;} ;
struct index_state {int dummy; } ;
struct attr_check {TYPE_1__* items; } ;
typedef  int /*<<< orphan*/  mmfile_t ;
typedef  int /*<<< orphan*/  mmbuffer_t ;
struct TYPE_2__ {char* value; } ;

/* Variables and functions */
 int DEFAULT_CONFLICT_MARKER_SIZE ; 
 int FUNC0 (char*) ; 
 struct ll_merge_driver* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct index_state*,char const*,struct attr_check*) ; 
 struct attr_check* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,struct index_state*) ; 
 int FUNC5 (struct ll_merge_driver const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,struct ll_merge_options const*,int) ; 

int FUNC6(mmbuffer_t *result_buf,
	     const char *path,
	     mmfile_t *ancestor, const char *ancestor_label,
	     mmfile_t *ours, const char *our_label,
	     mmfile_t *theirs, const char *their_label,
	     struct index_state *istate,
	     const struct ll_merge_options *opts)
{
	struct attr_check *check = FUNC3();
	static const struct ll_merge_options default_opts;
	const char *ll_driver_name = NULL;
	int marker_size = DEFAULT_CONFLICT_MARKER_SIZE;
	const struct ll_merge_driver *driver;

	if (!opts)
		opts = &default_opts;

	if (opts->renormalize) {
		FUNC4(ancestor, path, istate);
		FUNC4(ours, path, istate);
		FUNC4(theirs, path, istate);
	}

	FUNC2(istate, path, check);
	ll_driver_name = check->items[0].value;
	if (check->items[1].value) {
		marker_size = FUNC0(check->items[1].value);
		if (marker_size <= 0)
			marker_size = DEFAULT_CONFLICT_MARKER_SIZE;
	}
	driver = FUNC1(ll_driver_name);

	if (opts->virtual_ancestor) {
		if (driver->recursive)
			driver = FUNC1(driver->recursive);
	}
	if (opts->extra_marker_size) {
		marker_size += opts->extra_marker_size;
	}
	return driver->fn(driver, result_buf, path, ancestor, ancestor_label,
			  ours, our_label, theirs, their_label,
			  opts, marker_size);
}