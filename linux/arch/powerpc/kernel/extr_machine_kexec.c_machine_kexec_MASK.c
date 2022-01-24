#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kimage {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* machine_kexec ) (struct kimage*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kimage*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ ppc_md ; 
 int /*<<< orphan*/  FUNC4 (struct kimage*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct kimage *image)
{
	int save_ftrace_enabled;

	save_ftrace_enabled = FUNC1();
	FUNC5();

	if (ppc_md.machine_kexec)
		ppc_md.machine_kexec(image);
	else
		FUNC2(image);

	FUNC6();
	FUNC0(save_ftrace_enabled);

	/* Fall back to normal restart if we're still alive. */
	FUNC3(NULL);
	for(;;);
}