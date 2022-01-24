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
 int crypto_core_ed25519_NONREDUCEDSCALARBYTES ; 
 int crypto_core_ed25519_SCALARBYTES ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 

void
FUNC3(unsigned char *r,
                                  const unsigned char *s)
{
    unsigned char t[crypto_core_ed25519_NONREDUCEDSCALARBYTES];

    FUNC0(t, s, sizeof t);
    FUNC1(t);
    FUNC0(r, t, crypto_core_ed25519_SCALARBYTES);
    FUNC2(t, sizeof t);
}