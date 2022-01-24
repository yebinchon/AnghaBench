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
typedef  int /*<<< orphan*/  uiMenuItem ;
typedef  int /*<<< orphan*/  uiMenu ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 scalar_t__ hasPreferences ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  typePreferences ; 
 int /*<<< orphan*/  typeSeparator ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

uiMenuItem *FUNC2(uiMenu *m)
{
	if (hasPreferences)
		FUNC1("You cannot have multiple Preferences menu items in the same program.");
	hasPreferences = TRUE;
	FUNC0(m, typeSeparator, NULL);
	return FUNC0(m, typePreferences, NULL);
}