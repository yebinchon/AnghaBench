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
typedef  int int32_t ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 

void FUNC7(void)
{
	git_config *config_w, *config_r;
	const char *path = "./config-quick-write";
	const char *key = "quick.write";
	int32_t i;

	/* Create an external writer for one instance with the other one */
	FUNC1(FUNC5(&config_w, path));
	FUNC1(FUNC5(&config_r, path));

	/* Write and read in the same second (repeat to increase the chance of it happening) */
	for (i = 0; i < 10; i++) {
		int32_t val;
		FUNC1(FUNC6(config_w, key, i));
		FUNC2(1);
		FUNC1(FUNC4(&val, config_r, key));
		FUNC0(i, val);
	}

	FUNC3(config_r);
	FUNC3(config_w);
}