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
struct untracked_cache_dir {scalar_t__ untracked_nr; int /*<<< orphan*/ * untracked; int /*<<< orphan*/  untracked_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static void FUNC2(struct untracked_cache_dir *dir, const char *name)
{
	if (!dir)
		return;
	FUNC0(dir->untracked, dir->untracked_nr + 1,
		   dir->untracked_alloc);
	dir->untracked[dir->untracked_nr++] = FUNC1(name);
}