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
struct stat {int st_mode; int /*<<< orphan*/  st_size; } ;
struct index_state {int dummy; } ;
struct cache_entry {int /*<<< orphan*/  ce_mode; } ;

/* Variables and functions */
 int DATA_CHANGED ; 
#define  S_IFDIR 130 
#define  S_IFLNK 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TYPE_CHANGED ; 
 int /*<<< orphan*/  FUNC1 (struct index_state*,struct cache_entry const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_entry const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct index_state *istate,
				const struct cache_entry *ce,
				struct stat *st)
{
	switch (st->st_mode & S_IFMT) {
	case S_IFREG:
		if (FUNC1(istate, ce, st))
			return DATA_CHANGED;
		break;
	case S_IFLNK:
		if (FUNC3(ce, FUNC4(st->st_size)))
			return DATA_CHANGED;
		break;
	case S_IFDIR:
		if (FUNC0(ce->ce_mode))
			return FUNC2(ce) ? DATA_CHANGED : 0;
		/* else fallthrough */
	default:
		return TYPE_CHANGED;
	}
	return 0;
}