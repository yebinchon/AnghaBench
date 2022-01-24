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
struct regulator {int dummy; } ;
struct qca_vreg {scalar_t__ load_uA; int /*<<< orphan*/  max_uV; int /*<<< orphan*/  min_uV; } ;

/* Variables and functions */
 int FUNC0 (struct regulator*) ; 
 int FUNC1 (struct regulator*,scalar_t__) ; 
 int FUNC2 (struct regulator*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct qca_vreg vregs,
				struct regulator *regulator)
{
	int ret;

	ret = FUNC2(regulator, vregs.min_uV,
				    vregs.max_uV);
	if (ret)
		return ret;

	if (vregs.load_uA)
		ret = FUNC1(regulator,
					 vregs.load_uA);

	if (ret)
		return ret;

	return FUNC0(regulator);

}