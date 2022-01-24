#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* ops; int /*<<< orphan*/  boot_mem_top; int /*<<< orphan*/  dump_active; } ;
struct TYPE_5__ {scalar_t__ (* fadump_setup_metadata ) (TYPE_2__*) ;int /*<<< orphan*/  (* fadump_init_mem_struct ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  fadump_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ fw_dump ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC9(void)
{
	FUNC4(&fadump_mutex);
	if (!fw_dump.dump_active) {
		FUNC5(&fadump_mutex);
		return;
	}

	FUNC0();
	FUNC5(&fadump_mutex);

	FUNC2(fw_dump.boot_mem_top, FUNC3());
	FUNC1();

	/*
	 * Setup kernel metadata and initialize the kernel dump
	 * memory structure for FADump re-registration.
	 */
	if (fw_dump.ops->fadump_setup_metadata &&
	    (fw_dump.ops->fadump_setup_metadata(&fw_dump) < 0))
		FUNC6("Failed to setup kernel metadata!\n");
	fw_dump.ops->fadump_init_mem_struct(&fw_dump);
}