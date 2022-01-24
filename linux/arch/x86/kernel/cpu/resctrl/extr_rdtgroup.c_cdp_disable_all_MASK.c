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
struct TYPE_2__ {scalar_t__ alloc_enabled; } ;

/* Variables and functions */
 size_t RDT_RESOURCE_L2DATA ; 
 size_t RDT_RESOURCE_L3DATA ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* rdt_resources_all ; 

__attribute__((used)) static void FUNC2(void)
{
	if (rdt_resources_all[RDT_RESOURCE_L3DATA].alloc_enabled)
		FUNC1();
	if (rdt_resources_all[RDT_RESOURCE_L2DATA].alloc_enabled)
		FUNC0();
}