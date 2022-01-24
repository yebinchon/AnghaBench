#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int retry; unsigned char const* k; unsigned char const* v; } ;
typedef  TYPE_1__ secp256k1_rfc6979_hmac_sha256 ;
typedef  int /*<<< orphan*/  secp256k1_hmac_sha256 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const*,int) ; 

__attribute__((used)) static void FUNC4(secp256k1_rfc6979_hmac_sha256 *rng, unsigned char *out, size_t outlen) {
    /* RFC6979 3.2.h. */
    static const unsigned char zero[1] = {0x00};
    if (rng->retry) {
        secp256k1_hmac_sha256 hmac;
        FUNC2(&hmac, rng->k, 32);
        FUNC3(&hmac, rng->v, 32);
        FUNC3(&hmac, zero, 1);
        FUNC1(&hmac, rng->k);
        FUNC2(&hmac, rng->k, 32);
        FUNC3(&hmac, rng->v, 32);
        FUNC1(&hmac, rng->v);
    }

    while (outlen > 0) {
        secp256k1_hmac_sha256 hmac;
        int now = outlen;
        FUNC2(&hmac, rng->k, 32);
        FUNC3(&hmac, rng->v, 32);
        FUNC1(&hmac, rng->v);
        if (now > 32) {
            now = 32;
        }
        FUNC0(out, rng->v, now);
        out += now;
        outlen -= now;
    }

    rng->retry = 1;
}