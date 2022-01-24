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
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char*) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wdt_regs ; 

__attribute__((used)) static void FUNC3(void)
{
	struct device_node *np = FUNC1(NULL, NULL,
							 "snps,dw-apb-wdg");
	if (FUNC0(!np, "unable to setup watchdog restart"))
		return;

	wdt_regs = FUNC2(np, 0);
	FUNC0(!wdt_regs, "failed to remap watchdog regs");
}