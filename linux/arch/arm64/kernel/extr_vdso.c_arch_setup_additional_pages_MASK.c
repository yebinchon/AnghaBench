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
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct linux_binprm {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM64_VDSO ; 
 int EINTR ; 
 int FUNC0 (int /*<<< orphan*/ ,struct mm_struct*,struct linux_binprm*,int) ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct linux_binprm *bprm,
				int uses_interp)
{
	struct mm_struct *mm = current->mm;
	int ret;

	if (FUNC1(&mm->mmap_sem))
		return -EINTR;

	ret = FUNC0(ARM64_VDSO,
				       mm,
				       bprm,
				       uses_interp);

	FUNC2(&mm->mmap_sem);

	return ret;
}