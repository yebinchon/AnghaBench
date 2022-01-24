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
struct list_objects_filter_options {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct list_objects_filter_options*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 (char*,char const*) ; 

void FUNC6(
	const char *remote,
	struct list_objects_filter_options *filter_options)
{
	char *cfg_name;
	char *filter_name;

	/* Check if it is already registered */
	if (!FUNC3(remote)) {
		FUNC2("core.repositoryformatversion", "1");

		/* Add promisor config for the remote */
		cfg_name = FUNC5("remote.%s.promisor", remote);
		FUNC2(cfg_name, "true");
		FUNC1(cfg_name);
	}

	/*
	 * Record the initial filter-spec in the config as
	 * the default for subsequent fetches from this remote.
	 */
	filter_name = FUNC5("remote.%s.partialclonefilter", remote);
	/* NEEDSWORK: 'expand' result leaking??? */
	FUNC2(filter_name,
		       FUNC0(filter_options));
	FUNC1(filter_name);

	/* Make sure the config info are reset */
	FUNC4();
}