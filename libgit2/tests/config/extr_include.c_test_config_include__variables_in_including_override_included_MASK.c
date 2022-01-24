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
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(void)
{
	int i;

	FUNC1("top-level", "[include]\npath = included\n[foo]\nbar = 1");
	FUNC1("included", "[foo]\nbar = 2");

	FUNC2(FUNC4(&cfg, "top-level"));
	FUNC2(FUNC3(&i, cfg, "foo.bar"));
	FUNC0(i, 1);

	FUNC2(FUNC5("top-level"));
	FUNC2(FUNC5("included"));
}