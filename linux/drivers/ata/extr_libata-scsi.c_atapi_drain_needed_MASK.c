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
struct request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * cmd; } ;

/* Variables and functions */
 scalar_t__ ATAPI_MISC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct request*) ; 
 TYPE_1__* FUNC6 (struct request*) ; 

__attribute__((used)) static int FUNC7(struct request *rq)
{
	if (FUNC3(!FUNC2(rq)))
		return 0;

	if (!FUNC1(rq) || FUNC4(FUNC5(rq)))
		return 0;

	return FUNC0(FUNC6(rq)->cmd[0]) == ATAPI_MISC;
}