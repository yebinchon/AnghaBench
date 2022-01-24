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
 int /*<<< orphan*/  HPET_CFG ; 
 unsigned int HPET_CFG_LEGACY ; 
 int hpet_legacy_int_enabled ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned int cfg = FUNC0(HPET_CFG);

	cfg |= HPET_CFG_LEGACY;
	FUNC1(cfg, HPET_CFG);
	hpet_legacy_int_enabled = true;
}