#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct linux_binprm {long loader; int taso; struct file* file; TYPE_2__* vma; scalar_t__ buf; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int entry; } ;
struct TYPE_4__ {int f_magic; int f_flags; } ;
struct exec {TYPE_3__ ah; TYPE_1__ fh; } ;
struct TYPE_5__ {int vm_end; } ;

/* Variables and functions */
 int ENOEXEC ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 struct file* FUNC4 (char*) ; 
 int FUNC5 (struct linux_binprm*) ; 
 int FUNC6 (struct linux_binprm*) ; 

__attribute__((used)) static int FUNC7(struct linux_binprm *bprm)
{
	struct exec *eh = (struct exec *)bprm->buf;
	unsigned long loader;
	struct file *file;
	int retval;

	if (eh->fh.f_magic != 0x183 || (eh->fh.f_flags & 0x3000) != 0x3000)
		return -ENOEXEC;

	if (bprm->loader)
		return -ENOEXEC;

	FUNC2(bprm->file);
	FUNC3(bprm->file);
	bprm->file = NULL;

	loader = bprm->vma->vm_end - sizeof(void *);

	file = FUNC4("/sbin/loader");
	retval = FUNC1(file);
	if (FUNC0(file))
		return retval;

	/* Remember if the application is TASO.  */
	bprm->taso = eh->ah.entry < 0x100000000UL;

	bprm->file = file;
	bprm->loader = loader;
	retval = FUNC5(bprm);
	if (retval < 0)
		return retval;
	return FUNC6(bprm);
}