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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ rerere_enabled ; 

__attribute__((used)) static int FUNC5(void)
{
	int rr_cache_exists;

	if (!rerere_enabled)
		return 0;

	rr_cache_exists = FUNC3(FUNC2());
	if (rerere_enabled < 0)
		return rr_cache_exists;

	if (!rr_cache_exists && FUNC4(FUNC2()))
		FUNC1(FUNC0("could not create directory '%s'"), FUNC2());
	return 1;
}