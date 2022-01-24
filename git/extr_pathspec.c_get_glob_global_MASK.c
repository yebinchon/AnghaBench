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
 int /*<<< orphan*/  GIT_GLOB_PATHSPECS_ENVIRONMENT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(void)
{
	static int glob = -1;

	if (glob < 0)
		glob = FUNC0(GIT_GLOB_PATHSPECS_ENVIRONMENT, 0);

	return glob;
}