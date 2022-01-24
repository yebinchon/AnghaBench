#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  zstream; int /*<<< orphan*/  ctx; int /*<<< orphan*/  object_pool; scalar_t__ walk_objects; struct TYPE_4__* object_list; scalar_t__ object_ix; scalar_t__ odb; int /*<<< orphan*/  progress_cond; int /*<<< orphan*/  progress_mutex; int /*<<< orphan*/  cache_mutex; } ;
typedef  TYPE_1__ git_packbuilder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(git_packbuilder *pb)
{
	if (pb == NULL)
		return;

#ifdef GIT_THREADS

	git_mutex_free(&pb->cache_mutex);
	git_mutex_free(&pb->progress_mutex);
	git_cond_free(&pb->progress_cond);

#endif

	if (pb->odb)
		FUNC4(pb->odb);

	if (pb->object_ix)
		FUNC5(pb->object_ix);

	if (pb->object_list)
		FUNC0(pb->object_list);

	FUNC5(pb->walk_objects);
	FUNC6(&pb->object_pool);

	FUNC2(&pb->ctx);
	FUNC7(&pb->zstream);

	FUNC0(pb);
}