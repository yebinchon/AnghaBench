#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  subdir; } ;
struct ref_entry {int flag; TYPE_1__ u; } ;

/* Variables and functions */
 int REF_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ref_entry*) ; 

__attribute__((used)) static void FUNC2(struct ref_entry *entry)
{
	if (entry->flag & REF_DIR) {
		/*
		 * Do not use get_ref_dir() here, as that might
		 * trigger the reading of loose refs.
		 */
		FUNC0(&entry->u.subdir);
	}
	FUNC1(entry);
}