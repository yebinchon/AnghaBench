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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  crypto_generichash_blake2b_state ;
typedef  int /*<<< orphan*/  blake2b_state ;

/* Variables and functions */
 size_t const BLAKE2B_KEYBYTES ; 
 size_t const BLAKE2B_OUTBYTES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t const UINT8_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ) ; 

int
FUNC4(crypto_generichash_blake2b_state *state,
                                const unsigned char *key, const size_t keylen,
                                const size_t outlen)
{
    if (outlen <= 0U || outlen > BLAKE2B_OUTBYTES ||
        keylen > BLAKE2B_KEYBYTES) {
        return -1;
    }
    FUNC1(outlen <= UINT8_MAX);
    FUNC1(keylen <= UINT8_MAX);
    FUNC0(sizeof(blake2b_state) <= sizeof *state);
    if (key == NULL || keylen <= 0U) {
        if (FUNC2((blake2b_state *) (void *) state, (uint8_t) outlen) != 0) {
            return -1; /* LCOV_EXCL_LINE */
        }
    } else if (FUNC3((blake2b_state *) (void *) state, (uint8_t) outlen, key,
                                (uint8_t) keylen) != 0) {
        return -1; /* LCOV_EXCL_LINE */
    }
    return 0;
}