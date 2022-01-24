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
typedef  int u32 ;
struct parents_resp {scalar_t__* parents; } ;
struct clock_parent {int /*<<< orphan*/  name; void* id; void* flag; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  CLK_PARENTS_FLAGS ; 
 int /*<<< orphan*/  CLK_PARENTS_ID ; 
 scalar_t__ DUMMY_PARENT ; 
 int END_OF_PARENTS ; 
 void* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ NA_PARENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct clock_parent *parents,
				      struct parents_resp *response,
				      u32 *nparent)
{
	int i;
	struct clock_parent *parent;

	for (i = 0; i < FUNC0(response->parents); i++) {
		if (response->parents[i] == NA_PARENT)
			return END_OF_PARENTS;

		parent = &parents[i];
		parent->id = FUNC1(CLK_PARENTS_ID, response->parents[i]);
		if (response->parents[i] == DUMMY_PARENT) {
			FUNC2(parent->name, "dummy_name");
			parent->flag = 0;
		} else {
			parent->flag = FUNC1(CLK_PARENTS_FLAGS,
						 response->parents[i]);
			if (FUNC3(parent->id, parent->name))
				continue;
		}
		*nparent += 1;
	}

	return 0;
}