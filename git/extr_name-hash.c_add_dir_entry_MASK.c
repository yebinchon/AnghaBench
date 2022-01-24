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
struct index_state {int dummy; } ;
struct dir_entry {struct dir_entry* parent; int /*<<< orphan*/  nr; } ;
struct cache_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache_entry*) ; 
 struct dir_entry* FUNC1 (struct index_state*,struct cache_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct index_state *istate, struct cache_entry *ce)
{
	/* Add reference to the directory entry (and parents if 0). */
	struct dir_entry *dir = FUNC1(istate, ce, FUNC0(ce));
	while (dir && !(dir->nr++))
		dir = dir->parent;
}