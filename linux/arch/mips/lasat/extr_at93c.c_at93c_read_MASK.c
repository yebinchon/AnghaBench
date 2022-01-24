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
 int AT93C_RCMD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

u8 FUNC4(u8 addr)
{
	u8 byte;
	FUNC1();
	FUNC3((addr & AT93C_ADDR_MAX)|AT93C_RCMD, 10);
	byte = FUNC2();
	FUNC0();
	return byte;
}