#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct git_commit {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  raw_message; } ;
typedef  TYPE_1__ git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(const char *expected, const char *given)
{
	git_commit *dummy;

	FUNC0(dummy = FUNC2(1, sizeof(struct git_commit)));

	dummy->raw_message = FUNC3(given);
	FUNC1(expected, FUNC5(dummy));

	FUNC4(dummy);
}