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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char* L ; 
 int crypto_core_ed25519_NONREDUCEDSCALARBYTES ; 
 int crypto_core_ed25519_SCALARBYTES ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int) ; 

void
FUNC5(unsigned char *comp,
                                      const unsigned char *s)
{
    unsigned char t_[crypto_core_ed25519_NONREDUCEDSCALARBYTES];
    unsigned char s_[crypto_core_ed25519_NONREDUCEDSCALARBYTES];

    FUNC0(crypto_core_ed25519_NONREDUCEDSCALARBYTES >=
                    2 * crypto_core_ed25519_SCALARBYTES);
    FUNC2(t_, 0, sizeof t_);
    FUNC2(s_, 0, sizeof s_);
    t_[0]++;
    FUNC1(t_ + crypto_core_ed25519_SCALARBYTES, L,
           crypto_core_ed25519_SCALARBYTES);
    FUNC1(s_, s, crypto_core_ed25519_SCALARBYTES);
    FUNC4(t_, s_, sizeof t_);
    FUNC3(t_);
    FUNC1(comp, t_, crypto_core_ed25519_SCALARBYTES);
}