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
 int /*<<< orphan*/  NMI_FLAG_FIRST ; 
 int /*<<< orphan*/  NMI_LOCAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  smp_stop_nmi_callback ; 

__attribute__((used)) static int FUNC1(void)
{
	return FUNC0(NMI_LOCAL, smp_stop_nmi_callback,
				    NMI_FLAG_FIRST, "smp_stop");
}