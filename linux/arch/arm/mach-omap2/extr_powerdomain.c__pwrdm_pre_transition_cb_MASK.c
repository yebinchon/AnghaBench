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
struct powerdomain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWRDM_STATE_NOW ; 
 int /*<<< orphan*/  FUNC0 (struct powerdomain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct powerdomain*) ; 

__attribute__((used)) static int FUNC2(struct powerdomain *pwrdm, void *unused)
{
	FUNC1(pwrdm);
	FUNC0(pwrdm, PWRDM_STATE_NOW);
	return 0;
}