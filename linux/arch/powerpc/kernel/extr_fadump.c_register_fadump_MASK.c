#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned long fadumphdr_addr; TYPE_1__* ops; int /*<<< orphan*/  reserve_dump_area_size; } ;
struct TYPE_4__ {int (* fadump_register ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 void* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 () ; 
 TYPE_2__ fw_dump ; 
 unsigned long FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(void)
{
	unsigned long addr;
	void *vaddr;
	int ret;

	/*
	 * If no memory is reserved then we can not register for firmware-
	 * assisted dump.
	 */
	if (!fw_dump.reserve_dump_area_size)
		return -ENODEV;

	ret = FUNC2();
	if (ret)
		return ret;

	addr = fw_dump.fadumphdr_addr;

	/* Initialize fadump crash info header. */
	addr = FUNC3(addr);
	vaddr = FUNC0(addr);

	FUNC4("Creating ELF core headers at %#016lx\n", addr);
	FUNC1(vaddr);

	/* register the future kernel dump with firmware. */
	FUNC4("Registering for firmware-assisted kernel dump...\n");
	return fw_dump.ops->fadump_register(&fw_dump);
}