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
 int /*<<< orphan*/  cfg ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  count_me ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  snapshot ; 

void FUNC7(void)
{
	int count;

	count = 0;
	FUNC1("config", "[old]\nvalue = 5\nvalue = 6\n");
	FUNC2(FUNC4(&cfg, "config"));
	FUNC2(FUNC3(cfg, "old.value", NULL, count_me, &count));
	FUNC0(2, count);

	count = 0;
	FUNC2(FUNC5(&snapshot, cfg));
	FUNC2(FUNC3(snapshot, "old.value", NULL, count_me, &count));
	FUNC0(2, count);

	FUNC2(FUNC6("config"));
}