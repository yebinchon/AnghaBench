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
typedef  enum trailer_if_exists { ____Placeholder_trailer_if_exists } trailer_if_exists ;

/* Variables and functions */
 int EXISTS_ADD ; 
 int EXISTS_ADD_IF_DIFFERENT ; 
 int EXISTS_ADD_IF_DIFFERENT_NEIGHBOR ; 
 int EXISTS_DEFAULT ; 
 int EXISTS_DO_NOTHING ; 
 int EXISTS_REPLACE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 

int FUNC1(enum trailer_if_exists *item, const char *value)
{
	if (!value)
		*item = EXISTS_DEFAULT;
	else if (!FUNC0("addIfDifferent", value))
		*item = EXISTS_ADD_IF_DIFFERENT;
	else if (!FUNC0("addIfDifferentNeighbor", value))
		*item = EXISTS_ADD_IF_DIFFERENT_NEIGHBOR;
	else if (!FUNC0("add", value))
		*item = EXISTS_ADD;
	else if (!FUNC0("replace", value))
		*item = EXISTS_REPLACE;
	else if (!FUNC0("doNothing", value))
		*item = EXISTS_DO_NOTHING;
	else
		return -1;
	return 0;
}