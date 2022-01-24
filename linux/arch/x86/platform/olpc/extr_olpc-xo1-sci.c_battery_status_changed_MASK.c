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
struct power_supply {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct power_supply*) ; 
 struct power_supply* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct power_supply*) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct power_supply *psy = FUNC1("olpc-battery");

	if (psy) {
		FUNC0(psy);
		FUNC2(psy);
	}
}