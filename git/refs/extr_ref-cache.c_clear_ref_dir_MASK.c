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
struct ref_dir {int nr; int sorted; int alloc; int /*<<< orphan*/ * entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ref_dir *dir)
{
	int i;
	for (i = 0; i < dir->nr; i++)
		FUNC1(dir->entries[i]);
	FUNC0(dir->entries);
	dir->sorted = dir->nr = dir->alloc = 0;
}