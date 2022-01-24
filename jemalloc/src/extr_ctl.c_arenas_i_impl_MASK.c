#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_4__ {unsigned int arena_ind; int /*<<< orphan*/ * astats; } ;
typedef  TYPE_1__ ctl_arena_t ;
typedef  int /*<<< orphan*/  ctl_arena_stats_t ;
struct TYPE_5__ {TYPE_1__** arenas; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUANTUM ; 
 scalar_t__ FUNC0 (size_t) ; 
 size_t FUNC1 (size_t,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ config_stats ; 
 TYPE_2__* ctl_arenas ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ctl_arena_t *
FUNC6(tsd_t *tsd, size_t i, bool compat, bool init) {
	ctl_arena_t *ret;

	FUNC2(!compat || !init);

	ret = ctl_arenas->arenas[FUNC1(i, compat, false)];
	if (init && ret == NULL) {
		if (config_stats) {
			struct container_s {
				ctl_arena_t		ctl_arena;
				ctl_arena_stats_t	astats;
			};
			struct container_s *cont =
			    (struct container_s *)FUNC4(FUNC5(tsd),
			    FUNC3(), sizeof(struct container_s), QUANTUM);
			if (cont == NULL) {
				return NULL;
			}
			ret = &cont->ctl_arena;
			ret->astats = &cont->astats;
		} else {
			ret = (ctl_arena_t *)FUNC4(FUNC5(tsd), FUNC3(),
			    sizeof(ctl_arena_t), QUANTUM);
			if (ret == NULL) {
				return NULL;
			}
		}
		ret->arena_ind = (unsigned)i;
		ctl_arenas->arenas[FUNC1(i, compat, false)] = ret;
	}

	FUNC2(ret == NULL || FUNC0(ret->arena_ind) == FUNC0(i));
	return ret;
}