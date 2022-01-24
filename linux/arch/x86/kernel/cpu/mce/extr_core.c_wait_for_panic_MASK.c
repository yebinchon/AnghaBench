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
struct TYPE_2__ {scalar_t__ panic_timeout; } ;

/* Variables and functions */
 long PANIC_TIMEOUT ; 
 long USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ mca_cfg ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ panic_timeout ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void)
{
	long timeout = PANIC_TIMEOUT*USEC_PER_SEC;

	FUNC2();
	FUNC0();
	while (timeout-- > 0)
		FUNC3(1);
	if (panic_timeout == 0)
		panic_timeout = mca_cfg.panic_timeout;
	FUNC1("Panicing machine check CPU died");
}