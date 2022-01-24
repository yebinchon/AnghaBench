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
struct object_id {int dummy; } ;
struct index_state {int dummy; } ;
struct cache_entry {int ce_namelen; int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  ce_flags; int /*<<< orphan*/  name; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 struct cache_entry* FUNC5 (struct index_state*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct object_id const*) ; 
 struct cache_entry* FUNC8 (struct index_state*,struct cache_entry*,unsigned int) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,unsigned int) ; 

struct cache_entry *FUNC11(struct index_state *istate,
				     unsigned int mode,
				     const struct object_id *oid,
				     const char *path,
				     int stage,
				     unsigned int refresh_options)
{
	struct cache_entry *ce, *ret;
	int len;

	if (!FUNC10(path, mode)) {
		FUNC4(FUNC0("invalid path '%s'"), path);
		return NULL;
	}

	len = FUNC9(path);
	ce = FUNC5(istate, len);

	FUNC7(&ce->oid, oid);
	FUNC6(ce->name, path, len);
	ce->ce_flags = FUNC1(stage);
	ce->ce_namelen = len;
	ce->ce_mode = FUNC2(mode);

	ret = FUNC8(istate, ce, refresh_options);
	if (ret != ce)
		FUNC3(ce);
	return ret;
}