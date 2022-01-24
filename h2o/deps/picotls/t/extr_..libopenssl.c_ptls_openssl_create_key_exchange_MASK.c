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
typedef  int /*<<< orphan*/  ptls_key_exchange_context_t ;
typedef  int /*<<< orphan*/  ptls_key_exchange_algorithm_t ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
#define  EVP_PKEY_EC 132 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
#define  NID_X25519 131 
#define  NID_X9_62_prime256v1 130 
#define  NID_secp384r1 129 
#define  NID_secp521r1 128 
 int PTLS_ERROR_INCOMPATIBLE_KEY ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ptls_openssl_secp256r1 ; 
 int /*<<< orphan*/  ptls_openssl_secp384r1 ; 
 int /*<<< orphan*/  ptls_openssl_secp521r1 ; 
 int /*<<< orphan*/  ptls_openssl_x25519 ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int FUNC8(ptls_key_exchange_context_t **ctx, EVP_PKEY *pkey)
{
    int ret, id;

    switch (id = FUNC4(pkey)) {

    case EVP_PKEY_EC: {
        /* obtain eckey */
        EC_KEY *eckey = FUNC3(pkey);

        /* determine algo */
        ptls_key_exchange_algorithm_t *algo;
        switch (FUNC0(FUNC2(eckey))) {
        case NID_X9_62_prime256v1:
            algo = &ptls_openssl_secp256r1;
            break;
#if PTLS_OPENSSL_HAVE_SECP384R1
        case NID_secp384r1:
            algo = &ptls_openssl_secp384r1;
            break;
#endif
#if PTLS_OPENSSL_HAVE_SECP521R1
        case NID_secp521r1:
            algo = &ptls_openssl_secp521r1;
            break;
#endif
        default:
            FUNC1(eckey);
            return PTLS_ERROR_INCOMPATIBLE_KEY;
        }

        /* load key */
        if ((ret = FUNC7(algo, ctx, eckey)) != 0) {
            FUNC1(eckey);
            return ret;
        }

        return 0;
    } break;

#if PTLS_OPENSSL_HAVE_X25519
    case NID_X25519:
        if ((ret = evp_keyex_init(&ptls_openssl_x25519, ctx, pkey)) != 0)
            return ret;
        EVP_PKEY_up_ref(pkey);
        return 0;
#endif

    default:
        return PTLS_ERROR_INCOMPATIBLE_KEY;
    }
}