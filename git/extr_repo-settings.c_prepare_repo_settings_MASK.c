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
struct TYPE_2__ {int core_commit_graph; int gc_write_commit_graph; int index_version; int core_untracked_cache; int fetch_negotiation_algorithm; int pack_use_sparse; int fetch_write_commit_graph; scalar_t__ initialized; } ;
struct repository {TYPE_1__ settings; } ;

/* Variables and functions */
 int FETCH_NEGOTIATION_DEFAULT ; 
 int FETCH_NEGOTIATION_SKIPPING ; 
 int UNTRACKED_CACHE_KEEP ; 
 int UNTRACKED_CACHE_REMOVE ; 
 int UNTRACKED_CACHE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ ignore_untracked_cache_config ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct repository*,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct repository*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct repository*,char*,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

void FUNC8(struct repository *r)
{
	int value;
	char *strval;

	if (r->settings.initialized)
		return;

	/* Defaults */
	FUNC2(&r->settings, -1, sizeof(r->settings));

	if (!FUNC3(r, "core.commitgraph", &value))
		r->settings.core_commit_graph = value;
	if (!FUNC3(r, "gc.writecommitgraph", &value))
		r->settings.gc_write_commit_graph = value;
	FUNC0(r->settings.core_commit_graph, 1);
	FUNC0(r->settings.gc_write_commit_graph, 1);

	if (!FUNC4(r, "index.version", &value))
		r->settings.index_version = value;
	if (!FUNC5(r, "core.untrackedcache", &value)) {
		if (value == 0)
			r->settings.core_untracked_cache = UNTRACKED_CACHE_REMOVE;
		else
			r->settings.core_untracked_cache = UNTRACKED_CACHE_WRITE;
	} else if (!FUNC6(r, "core.untrackedcache", &strval)) {
		if (!FUNC7(strval, "keep"))
			r->settings.core_untracked_cache = UNTRACKED_CACHE_KEEP;

		FUNC1(strval);
	}

	if (!FUNC6(r, "fetch.negotiationalgorithm", &strval)) {
		if (!FUNC7(strval, "skipping"))
			r->settings.fetch_negotiation_algorithm = FETCH_NEGOTIATION_SKIPPING;
		else
			r->settings.fetch_negotiation_algorithm = FETCH_NEGOTIATION_DEFAULT;
	}

	if (!FUNC3(r, "pack.usesparse", &value))
		r->settings.pack_use_sparse = value;
	if (!FUNC3(r, "feature.manyfiles", &value) && value) {
		FUNC0(r->settings.index_version, 4);
		FUNC0(r->settings.core_untracked_cache, UNTRACKED_CACHE_WRITE);
	}
	if (!FUNC3(r, "fetch.writecommitgraph", &value))
		r->settings.fetch_write_commit_graph = value;
	if (!FUNC3(r, "feature.experimental", &value) && value) {
		FUNC0(r->settings.pack_use_sparse, 1);
		FUNC0(r->settings.fetch_negotiation_algorithm, FETCH_NEGOTIATION_SKIPPING);
		FUNC0(r->settings.fetch_write_commit_graph, 1);
	}
	FUNC0(r->settings.fetch_write_commit_graph, 0);

	/* Hack for test programs like test-dump-untracked-cache */
	if (ignore_untracked_cache_config)
		r->settings.core_untracked_cache = UNTRACKED_CACHE_KEEP;
	else
		FUNC0(r->settings.core_untracked_cache, UNTRACKED_CACHE_KEEP);

	FUNC0(r->settings.fetch_negotiation_algorithm, FETCH_NEGOTIATION_DEFAULT);
}