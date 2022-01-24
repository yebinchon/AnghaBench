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
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_SUBMODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static void FUNC1(int error, const char *name)
{
	if (!error)
		return;

	FUNC0(GIT_ERROR_SUBMODULE, (error == GIT_ENOTFOUND) ?
		"no submodule named '%s'" :
		"submodule '%s' has not been added yet", name);
}