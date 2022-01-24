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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 unsigned long MMCRA_SAMPLE_ENABLE ; 
 unsigned long MMCRA_SDAR_MODE_DCACHE ; 
 unsigned long MMCRA_SDAR_MODE_NO_UPDATES ; 
 unsigned long MMCRA_SDAR_MODE_SHIFT ; 
 unsigned long MMCRA_SDAR_MODE_TLB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(u64 event, unsigned long *mmcra)
{
	/*
	 * MMCRA[SDAR_MODE] specifices how the SDAR should be updated in
	 * continous sampling mode.
	 *
	 * Incase of Power8:
	 * MMCRA[SDAR_MODE] will be programmed as "0b01" for continous sampling
	 * mode and will be un-changed when setting MMCRA[63] (Marked events).
	 *
	 * Incase of Power9:
	 * Marked event: MMCRA[SDAR_MODE] will be set to 0b00 ('No Updates'),
	 *               or if group already have any marked events.
	 * For rest
	 *	MMCRA[SDAR_MODE] will be set from event code.
	 *      If sdar_mode from event is zero, default to 0b01. Hardware
	 *      requires that we set a non-zero value.
	 */
	if (FUNC0(CPU_FTR_ARCH_300)) {
		if (FUNC1(event) || (*mmcra & MMCRA_SAMPLE_ENABLE))
			*mmcra &= MMCRA_SDAR_MODE_NO_UPDATES;
		else if (FUNC2(event))
			*mmcra |=  FUNC2(event) << MMCRA_SDAR_MODE_SHIFT;
		else
			*mmcra |= MMCRA_SDAR_MODE_DCACHE;
	} else
		*mmcra |= MMCRA_SDAR_MODE_TLB;
}