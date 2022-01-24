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
 int /*<<< orphan*/  EC_IO_PORT_DATA ; 
 int /*<<< orphan*/  EC_IO_PORT_HIGH ; 
 int /*<<< orphan*/  EC_IO_PORT_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  index_access_lock ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(unsigned short addr, unsigned char val)
{
	unsigned long flags;

	FUNC2(&index_access_lock, flags);
	FUNC1((addr & 0xff00) >> 8, EC_IO_PORT_HIGH);
	FUNC1((addr & 0x00ff), EC_IO_PORT_LOW);
	FUNC1(val, EC_IO_PORT_DATA);
	/*  flush the write action */
	FUNC0(EC_IO_PORT_DATA);
	FUNC3(&index_access_lock, flags);
}