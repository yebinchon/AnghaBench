#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int checkout_strategy; } ;

/* Variables and functions */
 int GIT_CHECKOUT_RECREATE_MISSING ; 
 int GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ checkout_opts ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  obj ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 

void FUNC7(void)
{
	checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE|GIT_CHECKOUT_RECREATE_MISSING;

	FUNC3(FUNC6(repo, "..", "testrepo/A"));

	FUNC2(FUNC4(repo, obj, &checkout_opts));

	FUNC1(!FUNC5("b.txt"));
	FUNC0("testrepo/A");
}