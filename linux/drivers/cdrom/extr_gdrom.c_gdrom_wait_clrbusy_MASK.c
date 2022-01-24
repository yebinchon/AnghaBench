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
 int /*<<< orphan*/  GDROM_ALTSTATUS_REG ; 
 unsigned long GDROM_DEFAULT_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long jiffies ; 
 int FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static bool FUNC3(void)
{
	unsigned long timeout = jiffies + GDROM_DEFAULT_TIMEOUT;
	while ((FUNC0(GDROM_ALTSTATUS_REG) & 0x80) &&
		(FUNC2(jiffies, timeout)))
		FUNC1();
	return FUNC2(jiffies, timeout + 1);
}