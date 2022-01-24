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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ SIRFSOC_PWRC_PDN_CTRL ; 
 int SIRFSOC_SLEEP_MODE_MASK ; 
 scalar_t__ sirfsoc_pwrc_base ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(u32 mode)
{
	u32 sleep_mode = FUNC0(sirfsoc_pwrc_base +
		SIRFSOC_PWRC_PDN_CTRL);
	sleep_mode &= ~(SIRFSOC_SLEEP_MODE_MASK << 1);
	sleep_mode |= mode << 1;
	FUNC1(sleep_mode, sirfsoc_pwrc_base +
		SIRFSOC_PWRC_PDN_CTRL);
}