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
 int /*<<< orphan*/  phys_cpu_present_map ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void)
{
	/*
	 * if we would be really "pedantic"
	 * we should pass read_apic_id() here
	 * but since NOOP suppose APIC ID = 0
	 * lets save a few cycles
	 */
	return FUNC0(0, phys_cpu_present_map);
}