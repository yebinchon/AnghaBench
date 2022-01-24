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
 int /*<<< orphan*/  crypto_core_ed25519_SCALARBYTES ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 

void
FUNC4(unsigned char *z, const unsigned char *x,
                               const unsigned char *y)
{
    unsigned char x_[crypto_core_ed25519_NONREDUCEDSCALARBYTES];
    unsigned char y_[crypto_core_ed25519_NONREDUCEDSCALARBYTES];

    FUNC2(x_, 0, sizeof x_);
    FUNC2(y_, 0, sizeof y_);
    FUNC1(x_, x, crypto_core_ed25519_SCALARBYTES);
    FUNC1(y_, y, crypto_core_ed25519_SCALARBYTES);
    FUNC3(x_, y_, crypto_core_ed25519_SCALARBYTES);
    FUNC0(z, x_);
}