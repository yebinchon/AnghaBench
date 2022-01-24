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
 int /*<<< orphan*/  GIT_ERROR_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int FUNC1(const char *name)
{
	FUNC0(GIT_ERROR_CONFIG, "config value '%s' was not found", name);
	return GIT_ENOTFOUND;
}