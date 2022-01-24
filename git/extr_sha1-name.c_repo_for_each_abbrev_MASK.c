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
struct repository {int dummy; } ;
struct oid_array {int dummy; } ;
struct disambiguate_state {int always_call_fn; struct oid_array* cb_data; int /*<<< orphan*/  fn; } ;
typedef  int /*<<< orphan*/  each_abbrev_fn ;

/* Variables and functions */
 struct oid_array OID_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct disambiguate_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct disambiguate_state*) ; 
 scalar_t__ FUNC2 (struct repository*,char const*,int /*<<< orphan*/ ,struct disambiguate_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct oid_array*) ; 
 int FUNC4 (struct oid_array*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  repo_collect_ambiguous ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

int FUNC6(struct repository *r, const char *prefix,
			 each_abbrev_fn fn, void *cb_data)
{
	struct oid_array collect = OID_ARRAY_INIT;
	struct disambiguate_state ds;
	int ret;

	if (FUNC2(r, prefix, FUNC5(prefix), &ds) < 0)
		return -1;

	ds.always_call_fn = 1;
	ds.fn = repo_collect_ambiguous;
	ds.cb_data = &collect;
	FUNC0(&ds);
	FUNC1(&ds);

	ret = FUNC4(&collect, fn, cb_data);
	FUNC3(&collect);
	return ret;
}