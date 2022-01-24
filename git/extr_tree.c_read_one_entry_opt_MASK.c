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
struct cache_entry {int ce_namelen; int /*<<< orphan*/  oid; scalar_t__ name; int /*<<< orphan*/  ce_flags; int /*<<< orphan*/  ce_mode; } ;

/* Variables and functions */
 int READ_TREE_RECURSIVE ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int FUNC1 (struct index_state*,struct cache_entry*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 struct cache_entry* FUNC4 (struct index_state*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct object_id const*) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(struct index_state *istate,
			      const struct object_id *oid,
			      const char *base, int baselen,
			      const char *pathname,
			      unsigned mode, int stage, int opt)
{
	int len;
	struct cache_entry *ce;

	if (FUNC0(mode))
		return READ_TREE_RECURSIVE;

	len = FUNC7(pathname);
	ce = FUNC4(istate, baselen + len);

	ce->ce_mode = FUNC3(mode);
	ce->ce_flags = FUNC2(stage);
	ce->ce_namelen = baselen + len;
	FUNC5(ce->name, base, baselen);
	FUNC5(ce->name + baselen, pathname, len+1);
	FUNC6(&ce->oid, oid);
	return FUNC1(istate, ce, opt);
}