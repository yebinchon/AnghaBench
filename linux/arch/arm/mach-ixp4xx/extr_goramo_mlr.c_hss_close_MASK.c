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
 int /*<<< orphan*/  CONTROL_HSS0_DTR_N ; 
 int /*<<< orphan*/  CONTROL_HSS1_DTR_N ; 
 int /*<<< orphan*/  GPIO_HSS0_DCD_N ; 
 int /*<<< orphan*/  GPIO_HSS0_RTS_N ; 
 int /*<<< orphan*/  GPIO_HSS1_DCD_N ; 
 int /*<<< orphan*/  GPIO_HSS1_RTS_N ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ ** set_carrier_cb_tab ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(int port, void *pdev)
{
	FUNC1(port ? FUNC0(GPIO_HSS1_DCD_N) :
		 FUNC0(GPIO_HSS0_DCD_N), pdev);
	set_carrier_cb_tab[!!port] = NULL; /* catch bugs */

	FUNC4(port ? CONTROL_HSS1_DTR_N : CONTROL_HSS0_DTR_N, 1);
	FUNC3();
	FUNC2(port ? GPIO_HSS1_RTS_N : GPIO_HSS0_RTS_N, 1);
}