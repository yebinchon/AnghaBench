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
struct cache_entry {int ce_namelen; int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  ce_flags; int /*<<< orphan*/  name; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 struct cache_entry* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct object_id const*) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,unsigned int) ; 

struct cache_entry *FUNC9(unsigned int mode, const struct object_id *oid,
					       const char *path, int stage)
{
	struct cache_entry *ce;
	int len;

	if (!FUNC8(path, mode)) {
		FUNC3(FUNC0("invalid path '%s'"), path);
		return NULL;
	}

	len = FUNC7(path);
	ce = FUNC4(len);

	FUNC6(&ce->oid, oid);
	FUNC5(ce->name, path, len);
	ce->ce_flags = FUNC1(stage);
	ce->ce_namelen = len;
	ce->ce_mode = FUNC2(mode);

	return ce;
}