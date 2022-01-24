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
struct TYPE_2__ {scalar_t__* statuses; size_t counter; int /*<<< orphan*/ * paths; } ;
typedef  TYPE_1__ submodule_expectations ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC3(
	const char *path, unsigned int status_flags, void *payload)
{
	submodule_expectations *exp = payload;

	while (exp->statuses[exp->counter] < 0)
		exp->counter++;

	FUNC1(exp->statuses[exp->counter], (int)status_flags);
	FUNC2(exp->paths[exp->counter++], path);

	FUNC0(status_flags);

	return 0;
}