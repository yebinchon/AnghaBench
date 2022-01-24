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
struct dir_struct {int /*<<< orphan*/  unmanaged_exclude_files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dir_struct*,char const*,int /*<<< orphan*/ *) ; 

void FUNC1(struct dir_struct *dir, const char *fname)
{
	dir->unmanaged_exclude_files++; /* see validate_untracked_cache() */
	FUNC0(dir, fname, NULL);
}