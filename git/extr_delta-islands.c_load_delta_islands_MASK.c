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
struct repository {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*) ; 
 int /*<<< orphan*/  find_island_for_ref ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  island_config_callback ; 
 int island_counter ; 
 int /*<<< orphan*/  island_marks ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  remote_islands ; 
 int /*<<< orphan*/  stderr ; 

void FUNC7(struct repository *r, int progress)
{
	island_marks = FUNC5();
	remote_islands = FUNC6();

	FUNC4(island_config_callback, NULL);
	FUNC2(find_island_for_ref, NULL);
	FUNC1(r);

	if (progress)
		FUNC3(stderr, FUNC0("Marked %d islands, done.\n"), island_counter);
}