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
 scalar_t__ crypto_hash_sha512_BYTES ; 
 int crypto_scalarmult_curve25519_BYTES ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*) ; 
 int crypto_sign_ed25519_PUBLICKEYBYTES ; 
 int crypto_sign_ed25519_SECRETKEYBYTES ; 
 scalar_t__ crypto_sign_ed25519_SEEDBYTES ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*) ; 
 int FUNC3 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  keypair_seed ; 
 scalar_t__ FUNC6 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC10(void)
{
    unsigned char ed25519_pk[crypto_sign_ed25519_PUBLICKEYBYTES];
    unsigned char ed25519_skpk[crypto_sign_ed25519_SECRETKEYBYTES];
    unsigned char curve25519_pk[crypto_scalarmult_curve25519_BYTES];
    unsigned char curve25519_pk2[crypto_scalarmult_curve25519_BYTES];
    unsigned char curve25519_sk[crypto_scalarmult_curve25519_BYTES];
    char          curve25519_pk_hex[crypto_scalarmult_curve25519_BYTES * 2 + 1];
    char          curve25519_sk_hex[crypto_scalarmult_curve25519_BYTES * 2 + 1];
    unsigned int  i;

    FUNC0(crypto_sign_ed25519_SEEDBYTES <= crypto_hash_sha512_BYTES);
    FUNC4(ed25519_pk, ed25519_skpk, keypair_seed);

    if (FUNC3(curve25519_pk, ed25519_pk) != 0) {
        FUNC7("conversion failed\n");
    }
    FUNC5(curve25519_sk, ed25519_skpk);
    FUNC8(curve25519_pk_hex, sizeof curve25519_pk_hex, curve25519_pk,
                   sizeof curve25519_pk);
    FUNC8(curve25519_sk_hex, sizeof curve25519_sk_hex, curve25519_sk,
                   sizeof curve25519_sk);

    FUNC7("curve25519 pk: [%s]\n", curve25519_pk_hex);
    FUNC7("curve25519 sk: [%s]\n", curve25519_sk_hex);

    for (i = 0U; i < 500U; i++) {
        FUNC2(ed25519_pk, ed25519_skpk);
        if (FUNC3(curve25519_pk, ed25519_pk) !=
            0) {
            FUNC7("conversion failed\n");
        }
        FUNC5(curve25519_sk, ed25519_skpk);
        FUNC1(curve25519_pk2, curve25519_sk);
        if (FUNC6(curve25519_pk, curve25519_pk2, sizeof curve25519_pk) != 0) {
            FUNC7("conversion failed\n");
        }
    }

    FUNC9(ed25519_pk, crypto_sign_ed25519_PUBLICKEYBYTES,
                   "0000000000000000000000000000000000000000000000000000000000000000"
                   "0000000000000000000000000000000000000000000000000000000000000000",
                   64, NULL, NULL, NULL);
    FUNC0(FUNC3(curve25519_pk, ed25519_pk) == -1);
    FUNC9(ed25519_pk, crypto_sign_ed25519_PUBLICKEYBYTES,
                   "0200000000000000000000000000000000000000000000000000000000000000"
                   "0000000000000000000000000000000000000000000000000000000000000000",
                   64, NULL, NULL, NULL);
    FUNC0(FUNC3(curve25519_pk, ed25519_pk) == -1);
    FUNC9(ed25519_pk, crypto_sign_ed25519_PUBLICKEYBYTES,
                   "0500000000000000000000000000000000000000000000000000000000000000"
                   "0000000000000000000000000000000000000000000000000000000000000000",
                   64, NULL, NULL, NULL);
    FUNC0(FUNC3(curve25519_pk, ed25519_pk) == -1);

    FUNC7("ok\n");

    return 0;
}