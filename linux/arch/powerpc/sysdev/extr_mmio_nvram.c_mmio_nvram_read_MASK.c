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
typedef  size_t ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,size_t) ; 
 scalar_t__ mmio_nvram_len ; 
 int /*<<< orphan*/  mmio_nvram_lock ; 
 scalar_t__ mmio_nvram_start ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC3(char *buf, size_t count, loff_t *index)
{
	unsigned long flags;

	if (*index >= mmio_nvram_len)
		return 0;
	if (*index + count > mmio_nvram_len)
		count = mmio_nvram_len - *index;

	FUNC1(&mmio_nvram_lock, flags);

	FUNC0(buf, mmio_nvram_start + *index, count);

	FUNC2(&mmio_nvram_lock, flags);
	
	*index += count;
	return count;
}