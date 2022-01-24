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
struct ref_entry {int /*<<< orphan*/  name; } ;
struct ref_dir {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref_dir*,struct ref_entry*) ; 
 struct ref_dir* FUNC1 (struct ref_dir*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct ref_dir *dir, struct ref_entry *ref)
{
	dir = FUNC1(dir, ref->name, 1);
	if (!dir)
		return -1;
	FUNC0(dir, ref);
	return 0;
}