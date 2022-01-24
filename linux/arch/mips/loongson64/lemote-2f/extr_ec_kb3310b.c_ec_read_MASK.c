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
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  index_access_lock ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned char FUNC4(unsigned short addr)
{
	unsigned char value;
	unsigned long flags;

	FUNC2(&index_access_lock, flags);
	FUNC1((addr & 0xff00) >> 8, EC_IO_PORT_HIGH);
	FUNC1((addr & 0x00ff), EC_IO_PORT_LOW);
	value = FUNC0(EC_IO_PORT_DATA);
	FUNC3(&index_access_lock, flags);

	return value;
}