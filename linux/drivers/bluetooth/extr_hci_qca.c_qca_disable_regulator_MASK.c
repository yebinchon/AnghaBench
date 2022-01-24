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
struct qca_vreg {scalar_t__ load_uA; int /*<<< orphan*/  max_uV; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC1 (struct regulator*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct qca_vreg vregs,
				  struct regulator *regulator)
{
	FUNC0(regulator);
	FUNC2(regulator, 0, vregs.max_uV);
	if (vregs.load_uA)
		FUNC1(regulator, 0);

}