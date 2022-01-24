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
struct traverse_info {int dummy; } ;
struct name_entry {int /*<<< orphan*/  pathlen; int /*<<< orphan*/  path; int /*<<< orphan*/  oid; int /*<<< orphan*/  mode; } ;
struct index_state {int dummy; } ;
struct cache_entry {size_t ce_namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  oid; int /*<<< orphan*/  ce_flags; int /*<<< orphan*/  ce_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cache_entry* FUNC2 (struct index_state*,size_t) ; 
 struct cache_entry* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,struct traverse_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (struct traverse_info const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct name_entry const*) ; 

__attribute__((used)) static struct cache_entry *FUNC8(const struct traverse_info *info,
	const struct name_entry *n,
	int stage,
	struct index_state *istate,
	int is_transient)
{
	size_t len = FUNC6(info, FUNC7(n));
	struct cache_entry *ce =
		is_transient ?
		FUNC3(len) :
		FUNC2(istate, len);

	ce->ce_mode = FUNC1(n->mode);
	ce->ce_flags = FUNC0(stage);
	ce->ce_namelen = len;
	FUNC5(&ce->oid, &n->oid);
	/* len+1 because the cache_entry allocates space for NUL */
	FUNC4(ce->name, len + 1, info, n->path, n->pathlen);

	return ce;
}