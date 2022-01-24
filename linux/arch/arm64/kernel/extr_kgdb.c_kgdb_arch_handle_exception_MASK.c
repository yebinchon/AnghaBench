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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*,char*) ; 
 int /*<<< orphan*/  kgdb_cpu_doing_single_step ; 
 int kgdb_single_step ; 
 int FUNC5 () ; 

int FUNC6(int exception_vector, int signo,
			       int err_code, char *remcom_in_buffer,
			       char *remcom_out_buffer,
			       struct pt_regs *linux_regs)
{
	int err;

	switch (remcom_in_buffer[0]) {
	case 'D':
	case 'k':
		/*
		 * Packet D (Detach), k (kill). No special handling
		 * is required here. Handle same as c packet.
		 */
	case 'c':
		/*
		 * Packet c (Continue) to continue executing.
		 * Set pc to required address.
		 * Try to read optional parameter and set pc.
		 * If this was a compiled breakpoint, we need to move
		 * to the next instruction else we will just breakpoint
		 * over and over again.
		 */
		FUNC4(linux_regs, remcom_in_buffer);
		FUNC0(&kgdb_cpu_doing_single_step, -1);
		kgdb_single_step =  0;

		/*
		 * Received continue command, disable single step
		 */
		if (FUNC1())
			FUNC2();

		err = 0;
		break;
	case 's':
		/*
		 * Update step address value with address passed
		 * with step packet.
		 * On debug exception return PC is copied to ELR
		 * So just update PC.
		 * If no step address is passed, resume from the address
		 * pointed by PC. Do not update PC
		 */
		FUNC4(linux_regs, remcom_in_buffer);
		FUNC0(&kgdb_cpu_doing_single_step, FUNC5());
		kgdb_single_step =  1;

		/*
		 * Enable single step handling
		 */
		if (!FUNC1())
			FUNC3(linux_regs);
		err = 0;
		break;
	default:
		err = -1;
	}
	return err;
}