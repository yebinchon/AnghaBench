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
 scalar_t__* a ; 
 int /*<<< orphan*/  c ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int
FUNC2(void)
{
    int i;

    FUNC0(a, c, sizeof c, key);
    for (i = 0; i < 32; ++i) {
        FUNC1(",0x%02x", (unsigned int) a[i]);
        if (i % 8 == 7)
            FUNC1("\n");
    }
    return 0;
}