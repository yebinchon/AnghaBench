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
struct merge_options {TYPE_1__* repo; } ;
struct index_state {int dummy; } ;
struct diff_filespec {int /*<<< orphan*/  oid; int /*<<< orphan*/  mode; } ;
struct cache_entry {int dummy; } ;
struct TYPE_2__ {struct index_state* index; } ;

/* Variables and functions */
 int CE_MATCH_IGNORE_MISSING ; 
 int CE_MATCH_REFRESH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct index_state*,struct cache_entry*,int) ; 
 int FUNC2 (struct merge_options*,int /*<<< orphan*/ ,char const*) ; 
 struct cache_entry* FUNC3 (struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 struct cache_entry* FUNC4 (struct index_state*,struct cache_entry*,int) ; 

__attribute__((used)) static int FUNC5(struct merge_options *opt,
			 const struct diff_filespec *blob,
			 const char *path, int stage, int refresh, int options)
{
	struct index_state *istate = opt->repo->index;
	struct cache_entry *ce;
	int ret;

	ce = FUNC3(istate, blob->mode, &blob->oid, path, stage, 0);
	if (!ce)
		return FUNC2(opt, FUNC0("add_cacheinfo failed for path '%s'; merge aborting."), path);

	ret = FUNC1(istate, ce, options);
	if (refresh) {
		struct cache_entry *nce;

		nce = FUNC4(istate, ce,
					  CE_MATCH_REFRESH | CE_MATCH_IGNORE_MISSING);
		if (!nce)
			return FUNC2(opt, FUNC0("add_cacheinfo failed to refresh for path '%s'; merge aborting."), path);
		if (nce != ce)
			ret = FUNC1(istate, nce, options);
	}
	return ret;
}