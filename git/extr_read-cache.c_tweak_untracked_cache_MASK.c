#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ core_untracked_cache; } ;
struct repository {TYPE_1__ settings; } ;
struct index_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ UNTRACKED_CACHE_REMOVE ; 
 scalar_t__ UNTRACKED_CACHE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct index_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*) ; 
 int /*<<< orphan*/  FUNC2 (struct index_state*) ; 
 struct repository* the_repository ; 

__attribute__((used)) static void FUNC3(struct index_state *istate)
{
	struct repository *r = the_repository;

	FUNC1(r);

	if (r->settings.core_untracked_cache  == UNTRACKED_CACHE_REMOVE) {
		FUNC2(istate);
		return;
	}

	if (r->settings.core_untracked_cache == UNTRACKED_CACHE_WRITE)
		FUNC0(istate);
}