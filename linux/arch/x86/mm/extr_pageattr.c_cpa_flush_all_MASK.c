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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  __cpa_flush_all ; 
 int /*<<< orphan*/  early_boot_irqs_disabled ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static void FUNC3(unsigned long cache)
{
	FUNC0(FUNC1() && !early_boot_irqs_disabled);

	FUNC2(__cpa_flush_all, (void *) cache, 1);
}