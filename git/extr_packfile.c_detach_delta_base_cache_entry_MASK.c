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
struct delta_base_cache_entry {scalar_t__ size; int /*<<< orphan*/  lru; int /*<<< orphan*/  key; int /*<<< orphan*/  ent; } ;

/* Variables and functions */
 int /*<<< orphan*/  delta_base_cache ; 
 int /*<<< orphan*/  delta_base_cached ; 
 int /*<<< orphan*/  FUNC0 (struct delta_base_cache_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct delta_base_cache_entry *ent)
{
	FUNC1(&delta_base_cache, &ent->ent, &ent->key);
	FUNC2(&ent->lru);
	delta_base_cached -= ent->size;
	FUNC0(ent);
}