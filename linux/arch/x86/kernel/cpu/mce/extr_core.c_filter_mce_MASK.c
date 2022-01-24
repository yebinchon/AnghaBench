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
struct mce {int dummy; } ;
struct TYPE_2__ {scalar_t__ x86_vendor; } ;

/* Variables and functions */
 scalar_t__ X86_VENDOR_AMD ; 
 int FUNC0 (struct mce*) ; 
 TYPE_1__ boot_cpu_data ; 

bool FUNC1(struct mce *m)
{
	if (boot_cpu_data.x86_vendor == X86_VENDOR_AMD)
		return FUNC0(m);

	return false;
}