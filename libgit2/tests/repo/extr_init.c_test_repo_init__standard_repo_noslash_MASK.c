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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cleanup_repository ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char*) ; 

void FUNC2(void)
{
	FUNC0(&cleanup_repository, "testrepo");
	FUNC1("testrepo", 0, "testrepo/.git/", "testrepo/");
}