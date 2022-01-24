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

/* Variables and functions */
 void* SVE_VL_MIN ; 
 int /*<<< orphan*/  SVE_VQ_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int sve_max_vl ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  sve_vq_map ; 

__attribute__((used)) static unsigned int FUNC7(unsigned int vl)
{
	int bit;
	int max_vl = sve_max_vl;

	if (FUNC0(!FUNC5(vl)))
		vl = SVE_VL_MIN;

	if (FUNC0(!FUNC5(max_vl)))
		max_vl = SVE_VL_MIN;

	if (vl > max_vl)
		vl = max_vl;

	bit = FUNC3(sve_vq_map, SVE_VQ_MAX,
			    FUNC2(FUNC6(vl)));
	return FUNC4(FUNC1(bit));
}