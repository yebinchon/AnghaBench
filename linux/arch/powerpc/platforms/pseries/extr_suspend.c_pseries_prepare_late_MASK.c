#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * complete; int /*<<< orphan*/  error; int /*<<< orphan*/  done; int /*<<< orphan*/  working; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ suspend_data ; 
 int /*<<< orphan*/  suspend_work ; 
 int /*<<< orphan*/  suspending ; 

__attribute__((used)) static int FUNC2(void)
{
	FUNC0(&suspending, 1);
	FUNC0(&suspend_data.working, 0);
	FUNC0(&suspend_data.done, 0);
	FUNC0(&suspend_data.error, 0);
	suspend_data.complete = &suspend_work;
	FUNC1(&suspend_work);
	return 0;
}