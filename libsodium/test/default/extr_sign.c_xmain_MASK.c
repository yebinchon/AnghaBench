#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  crypto_sign_state ;
struct TYPE_2__ {unsigned char* sk; unsigned char* pk; unsigned char* m; unsigned char* sig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned char*,unsigned long long*,unsigned char const*,unsigned int,unsigned char*) ; 
 int crypto_sign_BYTES ; 
 int crypto_sign_PUBLICKEYBYTES ; 
 int crypto_sign_SECRETKEYBYTES ; 
 int crypto_sign_SEEDBYTES ; 
 unsigned int FUNC3 () ; 
 scalar_t__ FUNC4 (unsigned char*,unsigned long long*,unsigned char const*,unsigned int,unsigned char*) ; 
 int crypto_sign_ed25519_PUBLICKEYBYTES ; 
 int crypto_sign_ed25519_SEEDBYTES ; 
 unsigned int FUNC5 () ; 
 unsigned int FUNC6 () ; 
 unsigned int FUNC7 () ; 
 unsigned int FUNC8 () ; 
 unsigned int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned char*,unsigned long long*,unsigned char*) ; 
 int FUNC14 (int /*<<< orphan*/ *,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (unsigned char*,unsigned char*) ; 
 unsigned int FUNC17 () ; 
 int FUNC18 (unsigned char*,unsigned long long*,unsigned char*,unsigned long long,unsigned char*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 unsigned int FUNC20 () ; 
 unsigned int FUNC21 () ; 
 scalar_t__ FUNC22 (unsigned char*,unsigned char*,unsigned char*) ; 
 unsigned int FUNC23 () ; 
 scalar_t__ FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int FUNC26 (unsigned char*,unsigned char const*,unsigned int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 unsigned char* keypair_seed ; 
 scalar_t__ FUNC28 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC29 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC30 (unsigned char*,int,int) ; 
 unsigned char* non_canonical_p ; 
 int /*<<< orphan*/  FUNC31 (char*,...) ; 
 int /*<<< orphan*/  FUNC32 (char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC33 (unsigned char*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* test_data ; 

int FUNC35(void)
{
    crypto_sign_state  st;
    unsigned char      extracted_seed[crypto_sign_ed25519_SEEDBYTES];
    unsigned char      extracted_pk[crypto_sign_ed25519_PUBLICKEYBYTES];
    unsigned char      sig[crypto_sign_BYTES];
    unsigned char      sm[1024 + crypto_sign_BYTES];
    unsigned char      m[1024];
    unsigned char      skpk[crypto_sign_SECRETKEYBYTES];
    unsigned char      pk[crypto_sign_PUBLICKEYBYTES];
    unsigned char      sk[crypto_sign_SECRETKEYBYTES];
    char               sig_hex[crypto_sign_BYTES * 2 + 1];
    char               pk_hex[crypto_sign_PUBLICKEYBYTES * 2 + 1];
    char               sk_hex[crypto_sign_SECRETKEYBYTES * 2 + 1];
    unsigned long long siglen;
    unsigned long long smlen;
    unsigned long long mlen;
    unsigned int       i;
    unsigned int       j;

    FUNC30(sig, 0, sizeof sig);
    for (i = 0U; i < (sizeof test_data) / (sizeof test_data[0]); i++) {
#ifdef BROWSER_TESTS
        if (i % 128U != 127U) {
            continue;
        }
#endif
        FUNC29(skpk, test_data[i].sk, crypto_sign_SEEDBYTES);
        FUNC29(skpk + crypto_sign_SEEDBYTES, test_data[i].pk,
               crypto_sign_PUBLICKEYBYTES);
        if (FUNC2(sm, &smlen, (const unsigned char *)test_data[i].m, i,
                        skpk) != 0) {
            FUNC31("crypto_sign() failure: [%u]\n", i);
            continue;
        }
        if (FUNC28(test_data[i].sig, sm, crypto_sign_BYTES) != 0) {
            FUNC31("signature failure: [%u]\n", i);
            continue;
        }
        if (FUNC18(m, NULL, sm, smlen, test_data[i].pk) != 0) {
            FUNC31("crypto_sign_open() failure: [%u]\n", i);
            continue;
        }
        FUNC0(sm + 32);
#ifndef ED25519_COMPAT
        if (FUNC18(m, &mlen, sm, smlen, test_data[i].pk) != -1) {
            FUNC31("crypto_sign_open(): signature [%u] is malleable\n", i);
            continue;
        }
#else
        if (crypto_sign_open(m, &mlen, sm, smlen, test_data[i].pk) != 0) {
            printf("crypto_sign_open(): signature [%u] is not malleable\n", i);
            continue;
        }
#endif
        if (FUNC28(test_data[i].m, m, (size_t)mlen) != 0) {
            FUNC31("message verification failure: [%u]\n", i);
            continue;
        }
        sm[i + crypto_sign_BYTES - 1U]++;
        if (FUNC18(m, &mlen, sm, smlen, test_data[i].pk) == 0) {
            FUNC31("message can be forged: [%u]\n", i);
            continue;
        }
        if (FUNC18(m, &mlen, sm, i % crypto_sign_BYTES,
                             test_data[i].pk) == 0) {
            FUNC31("short signed message verifies: [%u]\n",
                   i % crypto_sign_BYTES);
            continue;
        }
        if (FUNC4(sig, &siglen,
                                 (const unsigned char *)test_data[i].m, i, skpk)
            != 0) {
            FUNC31("detached signature failed: [%u]\n", i);
            continue;
        }
        if (siglen == 0U || siglen > crypto_sign_BYTES) {
            FUNC31("detached signature has an unexpected length: [%u]\n", i);
            continue;
        }
        if (FUNC28(test_data[i].sig, sig, crypto_sign_BYTES) != 0) {
            FUNC31("detached signature failure: [%u]\n", i);
            continue;
        }
        if (FUNC26(sig,
                                        (const unsigned char *)test_data[i].m,
                                        i, test_data[i].pk) != 0) {
            FUNC31("detached signature verification failed: [%u]\n", i);
            continue;
        }
    }
    FUNC31("%u tests\n", i);

    i--;

    FUNC29(sm, test_data[i].m, i);
    if (FUNC2(sm, &smlen, sm, i, skpk) != 0) {
        FUNC31("crypto_sign() with overlap failed\n");
    }
    if (FUNC18(sm, &mlen, sm, smlen, test_data[i].pk) != 0) {
        FUNC31("crypto_sign_open() with overlap failed\n");
    }
    if (FUNC28(test_data[i].m, sm, (size_t)mlen) != 0) {
        FUNC31("crypto_sign_open() with overlap failed (content)\n");
    }

    for (j = 1U; j < 8U; j++) {
        sig[63] ^= (j << 5);
        if (FUNC26(sig,
                                        (const unsigned char *)test_data[i].m,
                                        i, test_data[i].pk) != -1) {
            FUNC31("detached signature verification should have failed\n");
            continue;
        }
        sig[63] ^= (j << 5);
    }

#ifndef ED25519_COMPAT
    if (FUNC26(sig,
                                    (const unsigned char *)test_data[i].m,
                                    i, non_canonical_p) != -1) {
        FUNC31("detached signature verification with non-canonical key should have failed\n");
    }
#endif
    FUNC30(pk, 0, sizeof pk);
    if (FUNC26(sig,
                                    (const unsigned char *)test_data[i].m,
                                    i, pk) != -1) {
        FUNC31("detached signature verification should have failed\n");
    }

    FUNC30(sig, 0xff, 32);
    sig[0] = 0xdb;
    if (FUNC26(sig,
                                    (const unsigned char *)test_data[i].m,
                                    i, pk) != -1) {
        FUNC31("detached signature verification should have failed\n");
    }
    FUNC1(FUNC4(sig, NULL,
                                (const unsigned char *)test_data[i].m, i, skpk) == 0);

    FUNC33(pk, crypto_sign_PUBLICKEYBYTES,
                   "3eee494fb9eac773144e34b0c755affaf33ea782c0722e5ea8b150e61209ab36",
                   crypto_sign_PUBLICKEYBYTES * 2, NULL, NULL, NULL);
    if (FUNC26(sig,
                                    (const unsigned char *)test_data[i].m,
                                    i, pk) != -1) {
        FUNC31("signature with an invalid public key should have failed\n");
    }

    FUNC33(pk, crypto_sign_PUBLICKEYBYTES,
                   "0200000000000000000000000000000000000000000000000000000000000000",
                   crypto_sign_PUBLICKEYBYTES * 2, NULL, NULL, NULL);
    if (FUNC26(sig,
                                    (const unsigned char *)test_data[i].m,
                                    i, pk) != -1) {
        FUNC31("signature with an invalid public key should have failed\n");
    }

    FUNC33(pk, crypto_sign_PUBLICKEYBYTES,
                   "0500000000000000000000000000000000000000000000000000000000000000",
                   crypto_sign_PUBLICKEYBYTES * 2, NULL, NULL, NULL);
    if (FUNC26(sig,
                                    (const unsigned char *)test_data[i].m,
                                    i, pk) != -1) {
        FUNC31("signature with an invalid public key should have failed\n");
    }

    if (FUNC22(pk, sk, keypair_seed) != 0) {
        FUNC31("crypto_sign_seed_keypair() failure\n");
        return -1;
    }
    FUNC15(&st);
    FUNC25(&st, (const unsigned char *)test_data[i].m, i);
    FUNC13(&st, sig, NULL, sk);
    FUNC32(sig_hex, sizeof sig_hex, sig, sizeof sig);
    FUNC31("ed25519ph sig: [%s]\n", sig_hex);

    FUNC15(&st);
    FUNC25(&st, (const unsigned char *)test_data[i].m, i);
    if (FUNC14(&st, sig, pk) != 0) {
        FUNC31("ed5519ph verification failed\n");
    }
    FUNC15(&st);
    FUNC25(&st, (const unsigned char *)test_data[i].m, 0);
    FUNC25(&st, (const unsigned char *)test_data[i].m, i / 2);
    FUNC25(&st, ((const unsigned char *)test_data[i].m) + i / 2,
                       i - i / 2);
    if (FUNC14(&st, sig, pk) != 0) {
        FUNC31("ed5519ph verification failed\n");
    }
    sig[0]++;
    if (FUNC14(&st, sig, pk) != -1) {
        FUNC31("ed5519ph verification could be forged\n");
    }
    sig[0]--;
    pk[0]++;
    if (FUNC14(&st, sig, pk) != -1) {
        FUNC31("ed5519ph verification could be forged\n");
    }
    FUNC33(sk, crypto_sign_SECRETKEYBYTES,
                   "833fe62409237b9d62ec77587520911e9a759cec1d19755b7da901b96dca3d42",
                   2 * crypto_sign_SECRETKEYBYTES / 2, NULL, NULL, NULL);
    FUNC33(pk, crypto_sign_PUBLICKEYBYTES,
                   "ec172b93ad5e563bf4932c70e1245034c35467ef2efd4d64ebf819683467e2bf",
                   2 * crypto_sign_PUBLICKEYBYTES, NULL, NULL, NULL);
    FUNC29(sk + crypto_sign_SECRETKEYBYTES - crypto_sign_PUBLICKEYBYTES,
           pk, crypto_sign_PUBLICKEYBYTES);
    FUNC15(&st);
    FUNC25(&st, (const unsigned char *) "abc", 3);
    FUNC13(&st, sig, &siglen, sk);
    if (siglen == 0U || siglen > crypto_sign_BYTES) {
        FUNC31("ed25519ph signature has an unexpected length\n");
    }
    FUNC32(sig_hex, sizeof sig_hex, sig, sizeof sig);
    FUNC31("ed25519ph tv sig: [%s]\n", sig_hex);

    FUNC15(&st);
    FUNC25(&st, (const unsigned char *) "abc", 3);
    if (FUNC14(&st, sig, pk) != 0) {
        FUNC31("ed25519ph verification failed\n");
    }
    if (FUNC16(pk, sk) != 0) {
        FUNC31("crypto_sign_keypair() failure\n");
    }
    if (FUNC22(pk, sk, keypair_seed) != 0) {
        FUNC31("crypto_sign_seed_keypair() failure\n");
        return -1;
    }
    FUNC11(extracted_seed, sk);
    if (FUNC28(extracted_seed, keypair_seed, crypto_sign_ed25519_SEEDBYTES)
        != 0) {
        FUNC31("crypto_sign_ed25519_sk_to_seed() failure\n");
    }
    FUNC10(extracted_pk, sk);
    if (FUNC28(extracted_pk, pk, crypto_sign_ed25519_PUBLICKEYBYTES) != 0) {
        FUNC31("crypto_sign_ed25519_sk_to_pk() failure\n");
    }
    FUNC32(pk_hex, sizeof pk_hex, pk, sizeof pk);
    FUNC32(sk_hex, sizeof sk_hex, sk, sizeof sk);

    FUNC31("pk: [%s]\n", pk_hex);
    FUNC31("sk: [%s]\n", sk_hex);

    FUNC1(FUNC3() > 0U);
    FUNC1(FUNC23() > 0U);
    FUNC1(FUNC20() > 0U);
    FUNC1(FUNC21() > 0U);
    FUNC1(FUNC17() > 0U);
    FUNC1(FUNC34(FUNC19(), "ed25519") == 0);
    FUNC1(FUNC3() == FUNC5());
    FUNC1(FUNC23() == FUNC9());
    FUNC1(FUNC17() == FUNC6());
    FUNC1(FUNC20()
           == FUNC7());
    FUNC1(FUNC21()
           == FUNC8());
    FUNC1(FUNC24() == FUNC12());

#ifdef ED25519_NONDETERMINISTIC
    exit(0);
#endif

    return 0;
}