#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  word_pattern; int /*<<< orphan*/  fn_patterns; } ;
typedef  TYPE_1__ git_diff_driver ;
struct TYPE_6__ {int /*<<< orphan*/  re; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(git_diff_driver *driver)
{
	size_t i;

	if (!driver)
		return;

	for (i = 0; i < FUNC3(driver->fn_patterns); ++i)
		FUNC4(& FUNC2(driver->fn_patterns, i)->re);
	FUNC1(driver->fn_patterns);

	FUNC4(&driver->word_pattern);

	FUNC0(driver);
}