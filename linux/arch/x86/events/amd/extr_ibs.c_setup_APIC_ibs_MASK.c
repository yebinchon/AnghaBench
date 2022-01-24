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
 int /*<<< orphan*/  APIC_EILVT_MSG_NMI ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	int offset;

	offset = FUNC0();
	if (offset < 0)
		goto failed;

	if (!FUNC2(offset, 0, APIC_EILVT_MSG_NMI, 0))
		return;
failed:
	FUNC1("perf: IBS APIC setup failed on cpu #%d\n",
		FUNC3());
}