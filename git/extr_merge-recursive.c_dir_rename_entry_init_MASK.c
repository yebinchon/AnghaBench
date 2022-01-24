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
struct dir_rename_entry {char* dir; int /*<<< orphan*/  possible_new_dirs; int /*<<< orphan*/  new_dir; scalar_t__ non_unique_new_dir; int /*<<< orphan*/  ent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dir_rename_entry *entry,
				  char *directory)
{
	FUNC0(&entry->ent, FUNC2(directory));
	entry->dir = directory;
	entry->non_unique_new_dir = 0;
	FUNC1(&entry->new_dir, 0);
	FUNC3(&entry->possible_new_dirs, 0);
}