#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  attrcache; } ;
typedef  TYPE_1__ git_repository ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_15__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  macros; int /*<<< orphan*/  files; int /*<<< orphan*/  cfg_excl_file; int /*<<< orphan*/  cfg_attr_file; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ git_attr_cache ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ATTR_CONFIG ; 
 int /*<<< orphan*/  GIT_ATTR_FILE_XDG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  GIT_IGNORE_CONFIG ; 
 int /*<<< orphan*/  GIT_IGNORE_FILE_XDG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int,int) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC11 (TYPE_1__*) ; 
 int FUNC12 (int /*<<< orphan*/ **,TYPE_1__*) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(git_repository *repo)
{
	int ret = 0;
	git_attr_cache *cache = FUNC11(repo);
	git_config *cfg = NULL;

	if (cache)
		return 0;

	cache = FUNC3(1, sizeof(git_attr_cache));
	FUNC0(cache);

	/* set up lock */
	if (FUNC9(&cache->lock) < 0) {
		FUNC8(GIT_ERROR_OS, "unable to initialize lock for attr cache");
		FUNC5(cache);
		return -1;
	}

	if ((ret = FUNC12(&cfg, repo)) < 0)
		goto cancel;

	/* cache config settings for attributes and ignores */
	ret = FUNC2(
		&cache->cfg_attr_file, cfg, GIT_ATTR_CONFIG, GIT_ATTR_FILE_XDG);
	if (ret < 0)
		goto cancel;

	ret = FUNC2(
		&cache->cfg_excl_file, cfg, GIT_IGNORE_CONFIG, GIT_IGNORE_FILE_XDG);
	if (ret < 0)
		goto cancel;

	/* allocate hashtable for attribute and ignore file contents,
	 * hashtable for attribute macros, and string pool
	 */
	if ((ret = FUNC13(&cache->files)) < 0 ||
	    (ret = FUNC13(&cache->macros)) < 0)
		goto cancel;

	FUNC10(&cache->pool, 1);

	cache = FUNC4(&repo->attrcache, NULL, cache);
	if (cache)
		goto cancel; /* raced with another thread, free this but no error */

	FUNC7(cfg);

	/* insert default macros */
	return FUNC6(repo, "binary", "-diff -crlf -text");

cancel:
	FUNC1(cache);
	FUNC7(cfg);
	return ret;
}