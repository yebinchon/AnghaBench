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

/* Variables and functions */
 int /*<<< orphan*/  JMR3927_IOC_RESET_ADDR ; 
 int /*<<< orphan*/  JMR3927_IOC_RESET_CPU ; 
 int /*<<< orphan*/  JMR3927_IOC_RESET_PCI ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(char *command)
{
	FUNC3();
#if 1	/* Resetting PCI bus */
	FUNC2(0, JMR3927_IOC_RESET_ADDR);
	FUNC2(JMR3927_IOC_RESET_PCI, JMR3927_IOC_RESET_ADDR);
	(void)FUNC1(JMR3927_IOC_RESET_ADDR);	/* flush WB */
	FUNC4(1);
	FUNC2(0, JMR3927_IOC_RESET_ADDR);
#endif
	FUNC2(JMR3927_IOC_RESET_CPU, JMR3927_IOC_RESET_ADDR);
	/* fallback */
	FUNC0)();
}