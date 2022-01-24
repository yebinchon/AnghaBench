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
typedef  int /*<<< orphan*/  crypto_generichash_state ;
typedef  int /*<<< orphan*/  crypto_generichash_blake2b_state ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char const*,unsigned long long) ; 

int
FUNC1(crypto_generichash_state *state,
                          const unsigned char *in,
                          unsigned long long inlen)
{
    return FUNC0
        ((crypto_generichash_blake2b_state *) state, in, inlen);
}