#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * vdso; } ;
struct mm_struct {TYPE_1__ context; } ;
struct linux_binprm {int dummy; } ;
typedef  enum arch_vdso_type { ____Placeholder_arch_vdso_type } arch_vdso_type ;
struct TYPE_4__ {unsigned long vdso_pages; int /*<<< orphan*/  cm; int /*<<< orphan*/  dm; } ;

/* Variables and functions */
 void* FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int FUNC3 (void*) ; 
 int VM_EXEC ; 
 int VM_MAYEXEC ; 
 int VM_MAYREAD ; 
 int VM_MAYWRITE ; 
 int VM_READ ; 
 void* FUNC4 (struct mm_struct*,unsigned long,unsigned long,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* vdso_lookup ; 

__attribute__((used)) static int FUNC6(enum arch_vdso_type arch_index,
				    struct mm_struct *mm,
				    struct linux_binprm *bprm,
				    int uses_interp)
{
	unsigned long vdso_base, vdso_text_len, vdso_mapping_len;
	void *ret;

	vdso_text_len = vdso_lookup[arch_index].vdso_pages << PAGE_SHIFT;
	/* Be sure to map the data page */
	vdso_mapping_len = vdso_text_len + PAGE_SIZE;

	vdso_base = FUNC5(NULL, 0, vdso_mapping_len, 0, 0);
	if (FUNC2(vdso_base)) {
		ret = FUNC0(vdso_base);
		goto up_fail;
	}

	ret = FUNC4(mm, vdso_base, PAGE_SIZE,
				       VM_READ|VM_MAYREAD,
				       vdso_lookup[arch_index].dm);
	if (FUNC1(ret))
		goto up_fail;

	vdso_base += PAGE_SIZE;
	mm->context.vdso = (void *)vdso_base;
	ret = FUNC4(mm, vdso_base, vdso_text_len,
				       VM_READ|VM_EXEC|
				       VM_MAYREAD|VM_MAYWRITE|VM_MAYEXEC,
				       vdso_lookup[arch_index].cm);
	if (FUNC1(ret))
		goto up_fail;

	return 0;

up_fail:
	mm->context.vdso = NULL;
	return FUNC3(ret);
}