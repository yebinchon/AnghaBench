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
typedef  enum submodule_update_type { ____Placeholder_submodule_update_type } submodule_update_type ;

/* Variables and functions */
 int SM_UPDATE_CHECKOUT ; 
 int SM_UPDATE_COMMAND ; 
 int SM_UPDATE_MERGE ; 
 int SM_UPDATE_NONE ; 
 int SM_UPDATE_REBASE ; 
 int SM_UPDATE_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

enum submodule_update_type FUNC1(const char *value)
{
	if (!FUNC0(value, "none"))
		return SM_UPDATE_NONE;
	else if (!FUNC0(value, "checkout"))
		return SM_UPDATE_CHECKOUT;
	else if (!FUNC0(value, "rebase"))
		return SM_UPDATE_REBASE;
	else if (!FUNC0(value, "merge"))
		return SM_UPDATE_MERGE;
	else if (*value == '!')
		return SM_UPDATE_COMMAND;
	else
		return SM_UPDATE_UNSPECIFIED;
}