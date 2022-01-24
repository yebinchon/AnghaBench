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
struct rtas_fadump_mem_struct {int dummy; } ;
struct fw_dump {scalar_t__ dump_active; int /*<<< orphan*/  ibm_configure_kernel_dump; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FADUMP_INVALIDATE ; 
 int /*<<< orphan*/ * fdm_active ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 unsigned int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct fw_dump *fadump_conf)
{
	unsigned int wait_time;
	int rc;

	/* TODO: Add upper time limit for the delay */
	do {
		rc =  FUNC3(fadump_conf->ibm_configure_kernel_dump, 3, 1,
				NULL, FADUMP_INVALIDATE, fdm_active,
				sizeof(struct rtas_fadump_mem_struct));

		wait_time = FUNC2(rc);
		if (wait_time)
			FUNC0(wait_time);
	} while (wait_time);

	if (rc) {
		FUNC1("Failed to invalidate - unexpected error (%d).\n", rc);
		return -EIO;
	}

	fadump_conf->dump_active = 0;
	fdm_active = NULL;
	return 0;
}