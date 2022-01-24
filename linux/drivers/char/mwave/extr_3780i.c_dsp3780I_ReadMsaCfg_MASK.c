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
 int /*<<< orphan*/  DSP_MsaAddrHigh ; 
 int /*<<< orphan*/  DSP_MsaAddrLow ; 
 int /*<<< orphan*/  DSP_MsaDataDSISHigh ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned short,unsigned long) ; 
 int /*<<< orphan*/  TRACE_3780I ; 
 int /*<<< orphan*/  dsp_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned short FUNC6(unsigned short usDspBaseIO,
                                   unsigned long ulMsaAddr)
{
	unsigned long flags;
	unsigned short val;

	FUNC3(TRACE_3780I,
		"3780i::dsp3780I_ReadMsaCfg entry usDspBaseIO %x ulMsaAddr %lx\n",
		usDspBaseIO, ulMsaAddr);

	FUNC4(&dsp_lock, flags);
	FUNC1(DSP_MsaAddrLow, (unsigned short) ulMsaAddr);
	FUNC1(DSP_MsaAddrHigh, (unsigned short) (ulMsaAddr >> 16));
	val = FUNC0(DSP_MsaDataDSISHigh);
	FUNC5(&dsp_lock, flags);

	FUNC2(TRACE_3780I, "3780i::dsp3780I_ReadMsaCfg exit val %x\n", val);

	return val;
}