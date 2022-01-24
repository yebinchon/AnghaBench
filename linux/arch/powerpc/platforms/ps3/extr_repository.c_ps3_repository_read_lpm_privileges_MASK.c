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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 int /*<<< orphan*/  PS3_LPAR_ID_PME ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 

int FUNC4(unsigned int be_index, u64 *lpar,
	u64 *rights)
{
	int result;
	u64 node_id;

	*lpar = 0;
	*rights = 0;
	result = FUNC2(be_index, &node_id);
	return result ? result
		: FUNC3(PS3_LPAR_ID_PME,
			    FUNC1("be", 0),
			    node_id,
			    FUNC0("lpm", 0),
			    FUNC0("priv", 0),
			    lpar, rights);
}