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
struct TYPE_3__ {int /*<<< orphan*/  checkout_strategy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ checkout_opts ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  obj ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  repo ; 

void FUNC8(void)
{
	checkout_opts.checkout_strategy = GIT_CHECKOUT_FORCE;

	FUNC4(FUNC7("testrepo/NEW.txt", 0777));
	FUNC3("testrepo/NEW.txt/foobar", "neue file\n", 10, \
		O_WRONLY | O_CREAT | O_TRUNC, 0644);

	FUNC2(FUNC5(repo, obj, &checkout_opts));

	FUNC0("testrepo/new.txt");
	FUNC1(!FUNC6("testrepo/new.txt"));
}