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
struct reg_field {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 struct reg_field const* sti_stih407_dvfs_regfields ; 

__attribute__((used)) static const struct reg_field *FUNC1(void)
{
	if (FUNC0("st,stih407") ||
	    FUNC0("st,stih410"))
		return sti_stih407_dvfs_regfields;

	return NULL;
}