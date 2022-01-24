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
struct untracked_cache_dir {int dummy; } ;
struct untracked_cache {int dir_flags; } ;

/* Variables and functions */
 int DIR_SHOW_OTHER_DIRECTORIES ; 
 int /*<<< orphan*/  FUNC0 (struct untracked_cache*,struct untracked_cache_dir*) ; 
 struct untracked_cache_dir* FUNC1 (struct untracked_cache*,struct untracked_cache_dir*,char const*,int) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static int FUNC3(struct untracked_cache *uc,
				    struct untracked_cache_dir *dir,
				    const char *path, int len)
{
	const char *rest = FUNC2(path, '/');

	if (rest) {
		int component_len = rest - path;
		struct untracked_cache_dir *d =
			FUNC1(uc, dir, path, component_len);
		int ret =
			FUNC3(uc, d, rest + 1,
						 len - (component_len + 1));
		if (ret)
			FUNC0(uc, dir);
		return ret;
	}

	FUNC0(uc, dir);
	return uc->dir_flags & DIR_SHOW_OTHER_DIRECTORIES;
}