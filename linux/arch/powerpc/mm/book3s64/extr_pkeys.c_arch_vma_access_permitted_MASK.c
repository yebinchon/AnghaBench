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
struct vm_area_struct {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  pkey_disabled ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*) ; 

bool FUNC4(struct vm_area_struct *vma, bool write,
			       bool execute, bool foreign)
{
	if (FUNC1(&pkey_disabled))
		return true;
	/*
	 * Do not enforce our key-permissions on a foreign vma.
	 */
	if (foreign || FUNC2(vma))
		return true;

	return FUNC0(FUNC3(vma), write, execute);
}