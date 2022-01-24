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
struct vm_area_struct {unsigned long vm_start; int vm_flags; unsigned long vm_end; TYPE_2__* vm_file; } ;
struct spu_context {TYPE_1__* ops; } ;
struct TYPE_4__ {struct spu_context* private_data; } ;
struct TYPE_3__ {char* (* get_ls ) (struct spu_context*) ;} ;

/* Variables and functions */
 int EACCES ; 
 int EINTR ; 
 int VM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,int) ; 
 scalar_t__ FUNC2 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct spu_context*) ; 
 char* FUNC4 (struct spu_context*) ; 

__attribute__((used)) static int FUNC5(struct vm_area_struct *vma,
				unsigned long address,
				void *buf, int len, int write)
{
	struct spu_context *ctx = vma->vm_file->private_data;
	unsigned long offset = address - vma->vm_start;
	char *local_store;

	if (write && !(vma->vm_flags & VM_WRITE))
		return -EACCES;
	if (FUNC2(ctx))
		return -EINTR;
	if ((offset + len) > vma->vm_end)
		len = vma->vm_end - offset;
	local_store = ctx->ops->get_ls(ctx);
	if (write)
		FUNC1(local_store + offset, buf, len);
	else
		FUNC0(buf, local_store + offset, len);
	FUNC3(ctx);
	return len;
}