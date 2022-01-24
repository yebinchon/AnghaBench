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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(void)
{
	FUNC2(FUNC4("empty_dir", 0777));
	FUNC0(FUNC3("empty_dir"));

	FUNC1("empty_dir/content", "whatever\n");
	FUNC0(!FUNC3("empty_dir"));
	FUNC0(!FUNC3("empty_dir/content"));

	FUNC2(FUNC6("empty_dir/content"));

	FUNC2(FUNC4("empty_dir/content", 0777));
	FUNC0(!FUNC3("empty_dir"));
	FUNC0(FUNC3("empty_dir/content"));

	FUNC2(FUNC5("empty_dir/content"));

	FUNC2(FUNC5("empty_dir"));
}