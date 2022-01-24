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
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 size_t crypto_hash_BYTES ; 
 scalar_t__* h ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  x ; 

int
FUNC2(void)
{
    size_t i;

    FUNC0(h, x, sizeof x - 1U);
    for (i = 0; i < crypto_hash_BYTES; ++i) {
        FUNC1("%02x", (unsigned int) h[i]);
    }
    FUNC1("\n");

    return 0;
}