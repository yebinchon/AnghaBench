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
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  seed ; 

int
FUNC2(void)
{
    int           i;
    unsigned char sk[32];
    unsigned char pk[32];

    FUNC0(pk, sk, seed);
    for (i = 0; i < 32; ++i) {
        FUNC1(",0x%02x", (unsigned int) pk[i]);
        if (i % 8 == 7)
            FUNC1("\n");
    }
    for (i = 0; i < 32; ++i) {
        FUNC1(",0x%02x", (unsigned int) sk[i]);
        if (i % 8 == 7)
            FUNC1("\n");
    }
    return 0;
}