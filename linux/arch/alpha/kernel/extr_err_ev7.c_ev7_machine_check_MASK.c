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
struct el_subpacket {int dummy; } ;

/* Variables and functions */
 char* KERN_CRIT ; 
 unsigned long SCB_Q_PROCERR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct el_subpacket*) ; 
 char* err_print_prefix ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,unsigned int,int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void
FUNC6(unsigned long vector, unsigned long la_ptr)
{
	struct el_subpacket *el_ptr = (struct el_subpacket *)la_ptr;
	char *saved_err_prefix = err_print_prefix;

	/*
	 * Sync the processor
	 */
	FUNC2();
	FUNC0();

	err_print_prefix = KERN_CRIT;
	FUNC3("%s*CPU %s Error (Vector 0x%x) reported on CPU %d\n",
	       err_print_prefix, 
	       (vector == SCB_Q_PROCERR) ? "Correctable" : "Uncorrectable",
	       (unsigned int)vector, (int)FUNC4());
	FUNC1(el_ptr);
	err_print_prefix = saved_err_prefix;

	/* 
	 * Release the logout frame 
	 */
	FUNC5(0x7);
	FUNC2();
}