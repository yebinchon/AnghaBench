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
typedef  enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;

/* Variables and functions */
 int /*<<< orphan*/  SIRFSOC_SYS_RST_BIT ; 
 int /*<<< orphan*/  sirfsoc_rstc_base ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(enum reboot_mode mode, const char *cmd)
{
	FUNC0(SIRFSOC_SYS_RST_BIT, sirfsoc_rstc_base);
}