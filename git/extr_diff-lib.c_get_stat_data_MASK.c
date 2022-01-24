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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct object_id {int dummy; } ;
struct diff_options {int dummy; } ;
struct cache_entry {unsigned int ce_mode; struct object_id oid; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct cache_entry const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_entry const*) ; 
 int FUNC2 (struct cache_entry const*,struct stat*) ; 
 int FUNC3 (struct diff_options*,struct cache_entry const*,struct stat*,int /*<<< orphan*/ ,unsigned int*) ; 
 struct object_id null_oid ; 

__attribute__((used)) static int FUNC4(const struct cache_entry *ce,
			 const struct object_id **oidp,
			 unsigned int *modep,
			 int cached, int match_missing,
			 unsigned *dirty_submodule, struct diff_options *diffopt)
{
	const struct object_id *oid = &ce->oid;
	unsigned int mode = ce->ce_mode;

	if (!cached && !FUNC1(ce)) {
		int changed;
		struct stat st;
		changed = FUNC2(ce, &st);
		if (changed < 0)
			return -1;
		else if (changed) {
			if (match_missing) {
				*oidp = oid;
				*modep = mode;
				return 0;
			}
			return -1;
		}
		changed = FUNC3(diffopt, ce, &st,
						    0, dirty_submodule);
		if (changed) {
			mode = FUNC0(ce, st.st_mode);
			oid = &null_oid;
		}
	}

	*oidp = oid;
	*modep = mode;
	return 0;
}