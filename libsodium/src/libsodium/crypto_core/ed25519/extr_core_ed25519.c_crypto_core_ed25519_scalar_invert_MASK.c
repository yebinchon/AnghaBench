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
 int /*<<< orphan*/  crypto_core_ed25519_SCALARBYTES ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*) ; 
 int FUNC1 (unsigned char const*,int /*<<< orphan*/ ) ; 

int
FUNC2(unsigned char *recip, const unsigned char *s)
{
    FUNC0(recip, s);

    return - FUNC1(s, crypto_core_ed25519_SCALARBYTES);
}