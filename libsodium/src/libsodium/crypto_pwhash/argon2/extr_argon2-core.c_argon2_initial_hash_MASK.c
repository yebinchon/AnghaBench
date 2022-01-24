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
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  crypto_generichash_blake2b_state ;
typedef  scalar_t__ argon2_type ;
struct TYPE_3__ {int lanes; int outlen; int m_cost; int t_cost; int pwdlen; int flags; int saltlen; int secretlen; int adlen; int /*<<< orphan*/ * ad; int /*<<< orphan*/ * secret; int /*<<< orphan*/ * salt; int /*<<< orphan*/ * pwd; } ;
typedef  TYPE_1__ argon2_context ;

/* Variables and functions */
 int ARGON2_FLAG_CLEAR_PASSWORD ; 
 int ARGON2_FLAG_CLEAR_SECRET ; 
 int /*<<< orphan*/  ARGON2_PREHASH_DIGEST_LENGTH ; 
 int ARGON2_VERSION_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(uint8_t *blockhash, argon2_context *context,
                    argon2_type type)
{
    crypto_generichash_blake2b_state BlakeHash;
    uint8_t                          value[4U /* sizeof(uint32_t) */];

    if (NULL == context || NULL == blockhash) {
        return; /* LCOV_EXCL_LINE */
    }

    FUNC2(&BlakeHash, NULL, 0U,
                                    ARGON2_PREHASH_DIGEST_LENGTH);

    FUNC0(value, context->lanes);
    FUNC3(&BlakeHash, value, sizeof(value));

    FUNC0(value, context->outlen);
    FUNC3(&BlakeHash, value, sizeof(value));

    FUNC0(value, context->m_cost);
    FUNC3(&BlakeHash, value, sizeof(value));

    FUNC0(value, context->t_cost);
    FUNC3(&BlakeHash, value, sizeof(value));

    FUNC0(value, ARGON2_VERSION_NUMBER);
    FUNC3(&BlakeHash, value, sizeof(value));

    FUNC0(value, (uint32_t) type);
    FUNC3(&BlakeHash, value, sizeof(value));

    FUNC0(value, context->pwdlen);
    FUNC3(&BlakeHash, value, sizeof(value));

    if (context->pwd != NULL) {
        FUNC3(
            &BlakeHash, (const uint8_t *) context->pwd, context->pwdlen);

        /* LCOV_EXCL_START */
        if (context->flags & ARGON2_FLAG_CLEAR_PASSWORD) {
            FUNC4(context->pwd, context->pwdlen);
            context->pwdlen = 0;
        }
        /* LCOV_EXCL_STOP */
    }

    FUNC0(value, context->saltlen);
    FUNC3(&BlakeHash, value, sizeof(value));

    if (context->salt != NULL) {
        FUNC3(
            &BlakeHash, (const uint8_t *) context->salt, context->saltlen);
    }

    FUNC0(value, context->secretlen);
    FUNC3(&BlakeHash, value, sizeof(value));

    /* LCOV_EXCL_START */
    if (context->secret != NULL) {
        FUNC3(
            &BlakeHash, (const uint8_t *) context->secret, context->secretlen);

        if (context->flags & ARGON2_FLAG_CLEAR_SECRET) {
            FUNC4(context->secret, context->secretlen);
            context->secretlen = 0;
        }
    }
    /* LCOV_EXCL_STOP */

    FUNC0(value, context->adlen);
    FUNC3(&BlakeHash, value, sizeof(value));

    /* LCOV_EXCL_START */
    if (context->ad != NULL) {
        FUNC3(
            &BlakeHash, (const uint8_t *) context->ad, context->adlen);
    }
    /* LCOV_EXCL_STOP */

    FUNC1(&BlakeHash, blockhash,
                                     ARGON2_PREHASH_DIGEST_LENGTH);
}