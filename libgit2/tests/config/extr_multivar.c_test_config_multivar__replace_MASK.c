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
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  _name ; 
 int /*<<< orphan*/  cb ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 

void FUNC6(void)
{
	git_config *cfg;
	int n;

	FUNC1(FUNC4(&cfg, "config/config11"));

	n = 0;
	FUNC1(FUNC3(cfg, _name, NULL, cb, &n));
	FUNC0(n == 2);

	FUNC1(FUNC5(cfg, _name, "github", "git://git.otherplace.org/libgit2"));

	n = 0;
	FUNC1(FUNC3(cfg, _name, NULL, cb, &n));
	FUNC0(n == 2);

	FUNC2(cfg);

	FUNC1(FUNC4(&cfg, "config/config11"));

	n = 0;
	FUNC1(FUNC3(cfg, _name, NULL, cb, &n));
	FUNC0(n == 2);

	FUNC2(cfg);
}