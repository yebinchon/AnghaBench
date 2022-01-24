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
typedef  enum trailer_if_missing { ____Placeholder_trailer_if_missing } trailer_if_missing ;

/* Variables and functions */
 int MISSING_ADD ; 
 int MISSING_DEFAULT ; 
 int MISSING_DO_NOTHING ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 

int FUNC1(enum trailer_if_missing *item, const char *value)
{
	if (!value)
		*item = MISSING_DEFAULT;
	else if (!FUNC0("doNothing", value))
		*item = MISSING_DO_NOTHING;
	else if (!FUNC0("add", value))
		*item = MISSING_ADD;
	else
		return -1;
	return 0;
}