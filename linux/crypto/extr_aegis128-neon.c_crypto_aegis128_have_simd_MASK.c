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
 int /*<<< orphan*/  AES ; 
 int /*<<< orphan*/  CONFIG_ARM64 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int aegis128_have_aes_insn ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3(void)
{
	if (FUNC2(FUNC1(AES))) {
		aegis128_have_aes_insn = 1;
		return true;
	}
	return FUNC0(CONFIG_ARM64);
}