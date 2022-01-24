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
struct fw_dump {int dump_registered; int /*<<< orphan*/  ibm_configure_kernel_dump; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FADUMP_REGISTER ; 
 int /*<<< orphan*/  fdm ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 unsigned int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct fw_dump *fadump_conf)
{
	unsigned int wait_time;
	int rc, err = -EIO;

	/* TODO: Add upper time limit for the delay */
	do {
		rc =  FUNC6(fadump_conf->ibm_configure_kernel_dump, 3, 1,
				NULL, FADUMP_REGISTER, &fdm,
				sizeof(struct rtas_fadump_mem_struct));

		wait_time = FUNC5(rc);
		if (wait_time)
			FUNC2(wait_time);

	} while (wait_time);

	switch (rc) {
	case 0:
		FUNC4("Registration is successful!\n");
		fadump_conf->dump_registered = 1;
		err = 0;
		break;
	case -1:
		FUNC3("Failed to register. Hardware Error(%d).\n", rc);
		break;
	case -3:
		if (!FUNC0())
			FUNC3("Can't have holes in boot memory area.\n");
		else if (!FUNC1())
			FUNC3("Can't have holes in reserved memory area.\n");

		FUNC3("Failed to register. Parameter Error(%d).\n", rc);
		err = -EINVAL;
		break;
	case -9:
		FUNC3("Already registered!\n");
		fadump_conf->dump_registered = 1;
		err = -EEXIST;
		break;
	default:
		FUNC3("Failed to register. Unknown Error(%d).\n", rc);
		break;
	}

	return err;
}