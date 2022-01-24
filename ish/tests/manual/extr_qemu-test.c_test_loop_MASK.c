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
 int /*<<< orphan*/  FUNC0 (char*) ; 

void FUNC1(void)
{
    long ecx, zf;
    const long ecx_vals[] = {
        0,
        1,
        0x10000,
        0x10001,
#if defined(__x86_64__)
        0x100000000L,
        0x100000001L,
#endif
    };
    int i, res;

#if !defined(__x86_64__)
    TEST_LOOP("jcxz");
#endif

    FUNC0("jecxz");
    FUNC0("loop");
    FUNC0("loopz");
    FUNC0("loopnz");
}