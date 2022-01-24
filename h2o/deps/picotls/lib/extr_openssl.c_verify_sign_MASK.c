#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ ptls_iovec_t ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ EVP_PKEY_RSA ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int PTLS_ALERT_DECRYPT_ERROR ; 
 int PTLS_ERROR_LIBRARY ; 
 int PTLS_ERROR_NO_MEMORY ; 
 int /*<<< orphan*/  RSA_PKCS1_PSS_PADDING ; 

__attribute__((used)) static int FUNC11(void *verify_ctx, ptls_iovec_t data, ptls_iovec_t signature)
{
    EVP_PKEY *key = verify_ctx;
    EVP_MD_CTX *ctx = NULL;
    EVP_PKEY_CTX *pkey_ctx = NULL;
    int ret = 0;

    if (data.base == NULL)
        goto Exit;

    if ((ctx = FUNC3()) == NULL) {
        ret = PTLS_ERROR_NO_MEMORY;
        goto Exit;
    }
    if (FUNC1(ctx, &pkey_ctx, FUNC10(), NULL, key) != 1) {
        ret = PTLS_ERROR_LIBRARY;
        goto Exit;
    }
    if (FUNC9(key) == EVP_PKEY_RSA) {
        if (FUNC6(pkey_ctx, RSA_PKCS1_PSS_PADDING) != 1) {
            ret = PTLS_ERROR_LIBRARY;
            goto Exit;
        }
        if (FUNC7(pkey_ctx, -1) != 1) {
            ret = PTLS_ERROR_LIBRARY;
            goto Exit;
        }
        if (FUNC5(pkey_ctx, FUNC10()) != 1) {
            ret = PTLS_ERROR_LIBRARY;
            goto Exit;
        }
    }
    if (FUNC2(ctx, data.base, data.len) != 1) {
        ret = PTLS_ERROR_LIBRARY;
        goto Exit;
    }
    if (FUNC0(ctx, signature.base, signature.len) != 1) {
        ret = PTLS_ALERT_DECRYPT_ERROR;
        goto Exit;
    }
    ret = 0;

Exit:
    if (ctx != NULL)
        FUNC4(ctx);
    FUNC8(key);
    return ret;
}