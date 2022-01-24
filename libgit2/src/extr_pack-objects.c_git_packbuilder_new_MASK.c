#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct walk_object {int dummy; } ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_7__ {int nr_threads; int /*<<< orphan*/  progress_cond; int /*<<< orphan*/  progress_mutex; int /*<<< orphan*/  cache_mutex; int /*<<< orphan*/  odb; int /*<<< orphan*/  zstream; int /*<<< orphan*/  ctx; int /*<<< orphan*/ * repo; int /*<<< orphan*/  object_pool; int /*<<< orphan*/  walk_objects; int /*<<< orphan*/  object_ix; } ;
typedef  TYPE_1__ git_packbuilder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  GIT_ZSTREAM_DEFLATE ; 
 TYPE_1__* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 

int FUNC12(git_packbuilder **out, git_repository *repo)
{
	git_packbuilder *pb;

	*out = NULL;

	pb = FUNC1(1, sizeof(*pb));
	FUNC0(pb);

	if (FUNC6(&pb->object_ix) < 0)
		goto on_error;

	if (FUNC6(&pb->walk_objects) < 0)
		goto on_error;

	FUNC8(&pb->object_pool, sizeof(struct walk_object));

	pb->repo = repo;
	pb->nr_threads = 1; /* do not spawn any thread by default */

	if (FUNC4(&pb->ctx) < 0 ||
		FUNC10(&pb->zstream, GIT_ZSTREAM_DEFLATE) < 0 ||
		FUNC9(&pb->odb, repo) < 0 ||
		FUNC11(pb) < 0)
		goto on_error;

#ifdef GIT_THREADS

	if (git_mutex_init(&pb->cache_mutex) ||
		git_mutex_init(&pb->progress_mutex) ||
		git_cond_init(&pb->progress_cond))
	{
		git_error_set(GIT_ERROR_OS, "failed to initialize packbuilder mutex");
		goto on_error;
	}

#endif

	*out = pb;
	return 0;

on_error:
	FUNC7(pb);
	return -1;
}