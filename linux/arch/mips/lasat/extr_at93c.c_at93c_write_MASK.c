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
typedef  int u8 ;

/* Variables and functions */
 int AT93C_ADDR_MAX ; 
 int AT93C_WCMD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

void FUNC6(u8 addr, u8 data)
{
	FUNC0();
	FUNC3();
	FUNC5((addr & AT93C_ADDR_MAX)|AT93C_WCMD, 10);
	FUNC5(data, 8);
	FUNC2();
	FUNC4();
	FUNC1();
}