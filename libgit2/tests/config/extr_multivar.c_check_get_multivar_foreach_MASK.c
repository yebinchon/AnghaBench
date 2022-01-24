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
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  _name ; 
 int /*<<< orphan*/  cb ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC3(
	git_config *cfg, int expected, int expected_patterned)
{
	int n = 0;

	if (expected > 0) {
		FUNC1(FUNC2(cfg, _name, NULL, cb, &n));
		FUNC0(expected, n);
	} else {
		FUNC0(GIT_ENOTFOUND,
			FUNC2(cfg, _name, NULL, cb, &n));
	}

	n = 0;

	if (expected_patterned > 0) {
		FUNC1(FUNC2(cfg, _name, "example", cb, &n));
		FUNC0(expected_patterned, n);
	} else {
		FUNC0(GIT_ENOTFOUND,
			FUNC2(cfg, _name, "example", cb, &n));
	}
}