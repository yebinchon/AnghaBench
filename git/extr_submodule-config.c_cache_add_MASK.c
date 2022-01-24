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
struct submodule_entry {int /*<<< orphan*/  ent; struct submodule* config; } ;
struct submodule_cache {int /*<<< orphan*/  for_name; } ;
struct submodule {int /*<<< orphan*/  name; int /*<<< orphan*/  gitmodules_oid; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 struct submodule_entry* FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct submodule_cache *cache,
		      struct submodule *submodule)
{
	unsigned int hash = FUNC0(&submodule->gitmodules_oid,
					    submodule->name);
	struct submodule_entry *e = FUNC3(sizeof(*e));
	FUNC2(&e->ent, hash);
	e->config = submodule;
	FUNC1(&cache->for_name, &e->ent);
}