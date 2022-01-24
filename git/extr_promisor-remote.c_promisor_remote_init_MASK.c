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
struct promisor_remote {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int initialized ; 
 int /*<<< orphan*/  promisor_remote_config ; 
 struct promisor_remote* FUNC1 (scalar_t__,struct promisor_remote**) ; 
 int /*<<< orphan*/  FUNC2 (struct promisor_remote*,struct promisor_remote*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ repository_format_partial_clone ; 

__attribute__((used)) static void FUNC4(void)
{
	if (initialized)
		return;
	initialized = 1;

	FUNC0(promisor_remote_config, NULL);

	if (repository_format_partial_clone) {
		struct promisor_remote *o, *previous;

		o = FUNC1(repository_format_partial_clone,
					   &previous);
		if (o)
			FUNC2(o, previous);
		else
			FUNC3(repository_format_partial_clone);
	}
}