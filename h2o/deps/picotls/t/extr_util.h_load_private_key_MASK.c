#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  super; } ;
typedef  TYPE_1__ ptls_openssl_sign_certificate_t ;
struct TYPE_6__ {int /*<<< orphan*/ * sign_certificate; } ;
typedef  TYPE_2__ ptls_context_t ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC8(ptls_context_t *ctx, const char *fn)
{
    static ptls_openssl_sign_certificate_t sc;
    FILE *fp;
    EVP_PKEY *pkey;

    if ((fp = FUNC4(fn, "rb")) == NULL) {
        FUNC5(stderr, "failed to open file:%s:%s\n", fn, FUNC7(errno));
        FUNC2(1);
    }
    pkey = FUNC1(fp, NULL, NULL, NULL);
    FUNC3(fp);

    if (pkey == NULL) {
        FUNC5(stderr, "failed to read private key from file:%s\n", fn);
        FUNC2(1);
    }

    FUNC6(&sc, pkey);
    FUNC0(pkey);

    ctx->sign_certificate = &sc.super;
}