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
typedef  int /*<<< orphan*/  secp256k1_ecdsa_signature ;
typedef  int /*<<< orphan*/  ECDSA_SIG ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ **,unsigned char const**,size_t) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int FUNC10 (int /*<<< orphan*/ *,unsigned char**) ; 
 scalar_t__ FUNC11 (unsigned char*,unsigned char const*,size_t) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,unsigned char*,size_t*,int /*<<< orphan*/ *) ; 

int FUNC15(const unsigned char *sig, size_t siglen, int certainly_der, int certainly_not_der) {
    static const unsigned char zeroes[32] = {0};
#ifdef ENABLE_OPENSSL_TESTS
    static const unsigned char max_scalar[32] = {
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xfe,
        0xba, 0xae, 0xdc, 0xe6, 0xaf, 0x48, 0xa0, 0x3b,
        0xbf, 0xd2, 0x5e, 0x8c, 0xd0, 0x36, 0x41, 0x40
    };
#endif

    int ret = 0;

    secp256k1_ecdsa_signature sig_der;
    unsigned char roundtrip_der[2048];
    unsigned char compact_der[64];
    size_t len_der = 2048;
    int parsed_der = 0, valid_der = 0, roundtrips_der = 0;

    secp256k1_ecdsa_signature sig_der_lax;
    unsigned char roundtrip_der_lax[2048];
    unsigned char compact_der_lax[64];
    size_t len_der_lax = 2048;
    int parsed_der_lax = 0, valid_der_lax = 0, roundtrips_der_lax = 0;

#ifdef ENABLE_OPENSSL_TESTS
    ECDSA_SIG *sig_openssl;
    const BIGNUM *r = NULL, *s = NULL;
    const unsigned char *sigptr;
    unsigned char roundtrip_openssl[2048];
    int len_openssl = 2048;
    int parsed_openssl, valid_openssl = 0, roundtrips_openssl = 0;
#endif

    parsed_der = FUNC12(ctx, &sig_der, sig, siglen);
    if (parsed_der) {
        ret |= (!FUNC13(ctx, compact_der, &sig_der)) << 0;
        valid_der = (FUNC11(compact_der, zeroes, 32) != 0) && (FUNC11(compact_der + 32, zeroes, 32) != 0);
    }
    if (valid_der) {
        ret |= (!FUNC14(ctx, roundtrip_der, &len_der, &sig_der)) << 1;
        roundtrips_der = (len_der == siglen) && FUNC11(roundtrip_der, sig, siglen) == 0;
    }

    parsed_der_lax = FUNC9(ctx, &sig_der_lax, sig, siglen);
    if (parsed_der_lax) {
        ret |= (!FUNC13(ctx, compact_der_lax, &sig_der_lax)) << 10;
        valid_der_lax = (FUNC11(compact_der_lax, zeroes, 32) != 0) && (FUNC11(compact_der_lax + 32, zeroes, 32) != 0);
    }
    if (valid_der_lax) {
        ret |= (!FUNC14(ctx, roundtrip_der_lax, &len_der_lax, &sig_der_lax)) << 11;
        roundtrips_der_lax = (len_der_lax == siglen) && FUNC11(roundtrip_der_lax, sig, siglen) == 0;
    }

    if (certainly_der) {
        ret |= (!parsed_der) << 2;
    }
    if (certainly_not_der) {
        ret |= (parsed_der) << 17;
    }
    if (valid_der) {
        ret |= (!roundtrips_der) << 3;
    }

    if (valid_der) {
        ret |= (!roundtrips_der_lax) << 12;
        ret |= (len_der != len_der_lax) << 13;
        ret |= ((len_der != len_der_lax) || (FUNC11(roundtrip_der_lax, roundtrip_der, len_der) != 0)) << 14;
    }
    ret |= (roundtrips_der != roundtrips_der_lax) << 15;
    if (parsed_der) {
        ret |= (!parsed_der_lax) << 16;
    }

#ifdef ENABLE_OPENSSL_TESTS
    sig_openssl = ECDSA_SIG_new();
    sigptr = sig;
    parsed_openssl = (d2i_ECDSA_SIG(&sig_openssl, &sigptr, siglen) != NULL);
    if (parsed_openssl) {
        ECDSA_SIG_get0(sig_openssl, &r, &s);
        valid_openssl = !BN_is_negative(r) && !BN_is_negative(s) && BN_num_bits(r) > 0 && BN_num_bits(r) <= 256 && BN_num_bits(s) > 0 && BN_num_bits(s) <= 256;
        if (valid_openssl) {
            unsigned char tmp[32] = {0};
            BN_bn2bin(r, tmp + 32 - BN_num_bytes(r));
            valid_openssl = memcmp(tmp, max_scalar, 32) < 0;
        }
        if (valid_openssl) {
            unsigned char tmp[32] = {0};
            BN_bn2bin(s, tmp + 32 - BN_num_bytes(s));
            valid_openssl = memcmp(tmp, max_scalar, 32) < 0;
        }
    }
    len_openssl = i2d_ECDSA_SIG(sig_openssl, NULL);
    if (len_openssl <= 2048) {
        unsigned char *ptr = roundtrip_openssl;
        CHECK(i2d_ECDSA_SIG(sig_openssl, &ptr) == len_openssl);
        roundtrips_openssl = valid_openssl && ((size_t)len_openssl == siglen) && (memcmp(roundtrip_openssl, sig, siglen) == 0);
    } else {
        len_openssl = 0;
    }
    ECDSA_SIG_free(sig_openssl);

    ret |= (parsed_der && !parsed_openssl) << 4;
    ret |= (valid_der && !valid_openssl) << 5;
    ret |= (roundtrips_openssl && !parsed_der) << 6;
    ret |= (roundtrips_der != roundtrips_openssl) << 7;
    if (roundtrips_openssl) {
        ret |= (len_der != (size_t)len_openssl) << 8;
        ret |= ((len_der != (size_t)len_openssl) || (memcmp(roundtrip_der, roundtrip_openssl, len_der) != 0)) << 9;
    }
#endif
    return ret;
}