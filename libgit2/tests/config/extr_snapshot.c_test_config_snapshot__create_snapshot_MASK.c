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
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  cfg ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  snapshot ; 

void FUNC8(void)
{
	int32_t i;

	FUNC1("config", "[old]\nvalue = 5\n");
	FUNC2(FUNC5(&cfg, "config"));
	FUNC2(FUNC4(&i, cfg, "old.value"));
	FUNC0(5, i);

	FUNC2(FUNC6(&snapshot, cfg));

	/* Change the value on the file itself (simulate external process) */
	FUNC1("config", "[old]\nvalue = 56\n");

	FUNC2(FUNC4(&i, cfg, "old.value"));
	FUNC0(56, i);
	FUNC2(FUNC4(&i, snapshot, "old.value"));
	FUNC0(5, i);

	/* Change the value on the file itself (simulate external process) */
	FUNC1("config", "[old]\nvalue = 999\n");

	/* Old snapshot should still have the old value */
	FUNC2(FUNC4(&i, snapshot, "old.value"));
	FUNC0(5, i);

	/* New snapshot should see new value */
	FUNC3(snapshot);
	FUNC2(FUNC6(&snapshot, cfg));
	FUNC2(FUNC4(&i, snapshot, "old.value"));
	FUNC0(999, i);

	FUNC2(FUNC7("config"));
}