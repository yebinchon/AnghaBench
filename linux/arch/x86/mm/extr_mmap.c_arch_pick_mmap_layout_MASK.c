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
struct rlimit {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_compat_legacy_base; int /*<<< orphan*/  mmap_compat_base; int /*<<< orphan*/  mmap_legacy_base; int /*<<< orphan*/  mmap_base; int /*<<< orphan*/  get_unmapped_area; } ;

/* Variables and functions */
 int /*<<< orphan*/  arch_get_unmapped_area ; 
 int /*<<< orphan*/  arch_get_unmapped_area_topdown ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmap32_rnd_bits ; 
 int /*<<< orphan*/  mmap64_rnd_bits ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct mm_struct *mm, struct rlimit *rlim_stack)
{
	if (FUNC2())
		mm->get_unmapped_area = arch_get_unmapped_area;
	else
		mm->get_unmapped_area = arch_get_unmapped_area_topdown;

	FUNC0(&mm->mmap_base, &mm->mmap_legacy_base,
			FUNC1(mmap64_rnd_bits), FUNC4(0),
			rlim_stack);

#ifdef CONFIG_HAVE_ARCH_COMPAT_MMAP_BASES
	/*
	 * The mmap syscall mapping base decision depends solely on the
	 * syscall type (64-bit or compat). This applies for 64bit
	 * applications and 32bit applications. The 64bit syscall uses
	 * mmap_base, the compat syscall uses mmap_compat_base.
	 */
	arch_pick_mmap_base(&mm->mmap_compat_base, &mm->mmap_compat_legacy_base,
			arch_rnd(mmap32_rnd_bits), task_size_32bit(),
			rlim_stack);
#endif
}