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
 unsigned char FUNC0 (scalar_t__) ; 
 int mmio_nvram_len ; 
 int /*<<< orphan*/  mmio_nvram_lock ; 
 scalar_t__ mmio_nvram_start ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned char FUNC3(int addr)
{
	unsigned long flags;
	unsigned char val;

	if (addr >= mmio_nvram_len)
		return 0xff;

	FUNC1(&mmio_nvram_lock, flags);

	val = FUNC0(mmio_nvram_start + addr);

	FUNC2(&mmio_nvram_lock, flags);

	return val;
}