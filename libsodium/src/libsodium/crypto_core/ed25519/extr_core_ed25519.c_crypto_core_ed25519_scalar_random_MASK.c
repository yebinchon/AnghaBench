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
 int crypto_core_ed25519_SCALARBYTES ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 scalar_t__ FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (unsigned char*,int) ; 

void
FUNC3(unsigned char *r)
{
    do {
        FUNC0(r, crypto_core_ed25519_SCALARBYTES);
        r[crypto_core_ed25519_SCALARBYTES - 1] &= 0x1f;
    } while (FUNC1(r) == 0 ||
             FUNC2(r, crypto_core_ed25519_SCALARBYTES));
}