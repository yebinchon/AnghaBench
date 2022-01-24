#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_config_iterator ;
typedef  int /*<<< orphan*/  git_config_entry ;
struct TYPE_12__ {int (* iterator ) (TYPE_4__**,TYPE_1__*) ;} ;
typedef  TYPE_1__ git_config_backend ;
struct TYPE_13__ {TYPE_1__* backend; } ;
typedef  TYPE_2__ backend_internal ;
struct TYPE_14__ {size_t i; TYPE_4__* current; TYPE_10__* cfg; } ;
typedef  TYPE_3__ all_iter ;
struct TYPE_15__ {int (* next ) (int /*<<< orphan*/ **,TYPE_4__*) ;int /*<<< orphan*/  (* free ) (TYPE_4__*) ;} ;
struct TYPE_11__ {int /*<<< orphan*/  backends; } ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int GIT_ITEROVER ; 
 scalar_t__ FUNC0 (size_t*,TYPE_10__*,size_t) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ **,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_4__**,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ **,TYPE_4__*) ; 

__attribute__((used)) static int FUNC6(git_config_entry **entry, git_config_iterator *_iter)
{
	all_iter *iter = (all_iter *) _iter;
	backend_internal *internal;
	git_config_backend *backend;
	size_t i;
	int error = 0;

	if (iter->current != NULL &&
	    (error = iter->current->next(entry, iter->current)) == 0) {
		return 0;
	}

	if (error < 0 && error != GIT_ITEROVER)
		return error;

	do {
		if (FUNC0(&i, iter->cfg, iter->i) < 0)
			return GIT_ITEROVER;

		internal = FUNC1(&iter->cfg->backends, i - 1);
		backend = internal->backend;
		iter->i = i - 1;

		if (iter->current)
			iter->current->free(iter->current);

		iter->current = NULL;
		error = backend->iterator(&iter->current, backend);
		if (error == GIT_ENOTFOUND)
			continue;

		if (error < 0)
			return error;

		error = iter->current->next(entry, iter->current);
		/* If this backend is empty, then keep going */
		if (error == GIT_ITEROVER)
			continue;

		return error;

	} while(1);

	return GIT_ITEROVER;
}