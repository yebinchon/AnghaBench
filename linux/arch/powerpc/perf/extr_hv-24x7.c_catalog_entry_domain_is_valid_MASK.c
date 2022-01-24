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
 int FUNC0 (unsigned int) ; 
 int interface_version ; 
 int FUNC1 (unsigned int) ; 

__attribute__((used)) static bool FUNC2(unsigned domain)
{
	/* POWER8 doesn't support virtual domains. */
	if (interface_version == 1)
		return FUNC1(domain);
	else
		return FUNC0(domain);
}