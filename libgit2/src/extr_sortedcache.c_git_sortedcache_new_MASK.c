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
typedef  int /*<<< orphan*/  git_vector_cmp ;
typedef  int /*<<< orphan*/  git_sortedcache_free_item_fn ;
struct TYPE_7__ {size_t item_path_offset; int /*<<< orphan*/  pool; int /*<<< orphan*/  items; int /*<<< orphan*/  map; int /*<<< orphan*/  path; void* free_item_payload; int /*<<< orphan*/  free_item; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ git_sortedcache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC14 (char const*) ; 

int FUNC15(
	git_sortedcache **out,
	size_t item_path_offset,
	git_sortedcache_free_item_fn free_item,
	void *free_item_payload,
	git_vector_cmp item_cmp,
	const char *path)
{
	git_sortedcache *sc;
	size_t pathlen, alloclen;

	pathlen = path ? FUNC14(path) : 0;

	FUNC1(&alloclen, sizeof(git_sortedcache), pathlen);
	FUNC1(&alloclen, alloclen, 1);
	sc = FUNC3(1, alloclen);
	FUNC0(sc);

	FUNC7(&sc->pool, 1);

	if (FUNC12(&sc->items, 4, item_cmp) < 0 ||
	    FUNC10(&sc->map) < 0)
		goto fail;

	if (FUNC8(&sc->lock)) {
		FUNC5(GIT_ERROR_OS, "failed to initialize lock");
		goto fail;
	}

	sc->item_path_offset  = item_path_offset;
	sc->free_item         = free_item;
	sc->free_item_payload = free_item_payload;
	FUNC2(sc);
	if (pathlen)
		FUNC13(sc->path, path, pathlen);

	*out = sc;
	return 0;

fail:
	FUNC9(sc->map);
	FUNC11(&sc->items);
	FUNC6(&sc->pool);
	FUNC4(sc);
	return -1;
}