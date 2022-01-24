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
typedef  int uint32_t ;
struct pxa3xx_freq_info {int /*<<< orphan*/  dmcfs; int /*<<< orphan*/  hss; int /*<<< orphan*/  sflfs; int /*<<< orphan*/  smcfs; } ;

/* Variables and functions */
 int ACCR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ACCR_DMCFS_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ACCR_HSS_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int ACCR_SFLFS_MASK ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int ACCR_SMCFS_MASK ; 
 int ACSR ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct pxa3xx_freq_info *info)
{
	uint32_t mask;
	uint32_t accr = ACCR;

	mask = ACCR_SMCFS_MASK | ACCR_SFLFS_MASK | ACCR_HSS_MASK |
		ACCR_DMCFS_MASK;

	accr &= ~mask;
	accr |= FUNC3(info->smcfs) | FUNC2(info->sflfs) |
		FUNC1(info->hss) | FUNC0(info->dmcfs);

	ACCR = accr;

	while ((ACSR & mask) != (accr & mask))
		FUNC4();
}