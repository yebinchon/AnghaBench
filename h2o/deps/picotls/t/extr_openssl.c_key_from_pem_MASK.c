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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static ptls_key_exchange_context_t *FUNC7(const char *pem)
{
    BIO *bio = FUNC1((void *)pem, (int)FUNC6(pem));
    EVP_PKEY *pkey = FUNC3(bio, NULL, NULL, NULL);
    FUNC4(pkey != NULL && "failed to load private key");
    FUNC0(bio);

    ptls_key_exchange_context_t *ctx;
    int ret = FUNC5(&ctx, pkey);
    FUNC4(ret == 0 && "failed to setup private key");

    FUNC2(pkey);
    return ctx;
}