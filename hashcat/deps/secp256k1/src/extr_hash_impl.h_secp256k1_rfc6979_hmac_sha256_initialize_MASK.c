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
struct TYPE_3__ {unsigned char const* v; unsigned char const* k; scalar_t__ retry; } ;
typedef  TYPE_1__ secp256k1_rfc6979_hmac_sha256 ;
typedef  int /*<<< orphan*/  secp256k1_hmac_sha256 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const*,int) ; 

__attribute__((used)) static void FUNC4(secp256k1_rfc6979_hmac_sha256 *rng, const unsigned char *key, size_t keylen) {
    secp256k1_hmac_sha256 hmac;
    static const unsigned char zero[1] = {0x00};
    static const unsigned char one[1] = {0x01};

    FUNC0(rng->v, 0x01, 32); /* RFC6979 3.2.b. */
    FUNC0(rng->k, 0x00, 32); /* RFC6979 3.2.c. */

    /* RFC6979 3.2.d. */
    FUNC2(&hmac, rng->k, 32);
    FUNC3(&hmac, rng->v, 32);
    FUNC3(&hmac, zero, 1);
    FUNC3(&hmac, key, keylen);
    FUNC1(&hmac, rng->k);
    FUNC2(&hmac, rng->k, 32);
    FUNC3(&hmac, rng->v, 32);
    FUNC1(&hmac, rng->v);

    /* RFC6979 3.2.f. */
    FUNC2(&hmac, rng->k, 32);
    FUNC3(&hmac, rng->v, 32);
    FUNC3(&hmac, one, 1);
    FUNC3(&hmac, key, keylen);
    FUNC1(&hmac, rng->k);
    FUNC2(&hmac, rng->k, 32);
    FUNC3(&hmac, rng->v, 32);
    FUNC1(&hmac, rng->v);
    rng->retry = 0;
}