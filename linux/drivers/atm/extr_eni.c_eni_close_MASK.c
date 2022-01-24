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
struct atm_vcc {int /*<<< orphan*/  flags; int /*<<< orphan*/ * dev_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_VF_ADDR ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC4 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct atm_vcc *vcc)
{
	FUNC0(">eni_close\n");
	if (!FUNC1(vcc)) return;
	FUNC2(ATM_VF_READY,&vcc->flags);
	FUNC3(vcc);
	FUNC4(vcc);
	FUNC0("eni_close: done waiting\n");
	/* deallocate memory */
	FUNC5(FUNC1(vcc));
	vcc->dev_data = NULL;
	FUNC2(ATM_VF_ADDR,&vcc->flags);
	/*foo();*/
}