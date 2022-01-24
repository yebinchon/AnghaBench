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
struct promisor_remote {int /*<<< orphan*/  partial_clone_filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  core_partial_clone_filter_default ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char*,char const**,int*,char const**) ; 
 struct promisor_remote* FUNC4 (char*,int /*<<< orphan*/ *) ; 
 struct promisor_remote* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 char* FUNC7 (char const*,int) ; 

__attribute__((used)) static int FUNC8(const char *var, const char *value, void *data)
{
	const char *name;
	int namelen;
	const char *subkey;

	if (!FUNC6(var, "core.partialclonefilter"))
		return FUNC2(&core_partial_clone_filter_default,
					 var, value);

	if (FUNC3(var, "remote", &name, &namelen, &subkey) < 0)
		return 0;

	if (!FUNC6(subkey, "promisor")) {
		char *remote_name;

		if (!FUNC1(var, value))
			return 0;

		remote_name = FUNC7(name, namelen);

		if (!FUNC4(remote_name, NULL))
			FUNC5(remote_name);

		FUNC0(remote_name);
		return 0;
	}
	if (!FUNC6(subkey, "partialclonefilter")) {
		struct promisor_remote *r;
		char *remote_name = FUNC7(name, namelen);

		r = FUNC4(remote_name, NULL);
		if (!r)
			r = FUNC5(remote_name);

		FUNC0(remote_name);

		if (!r)
			return 0;

		return FUNC2(&r->partial_clone_filter, var, value);
	}

	return 0;
}