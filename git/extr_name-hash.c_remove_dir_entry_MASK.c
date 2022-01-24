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
struct index_state {int /*<<< orphan*/  dir_hash; } ;
struct dir_entry {int /*<<< orphan*/  ent; struct dir_entry* parent; int /*<<< orphan*/  nr; } ;
struct cache_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dir_entry*) ; 
 struct dir_entry* FUNC2 (struct index_state*,struct cache_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct index_state *istate, struct cache_entry *ce)
{
	/*
	 * Release reference to the directory entry. If 0, remove and continue
	 * with parent directory.
	 */
	struct dir_entry *dir = FUNC2(istate, ce, FUNC0(ce));
	while (dir && !(--dir->nr)) {
		struct dir_entry *parent = dir->parent;
		FUNC3(&istate->dir_hash, &dir->ent, NULL);
		FUNC1(dir);
		dir = parent;
	}
}