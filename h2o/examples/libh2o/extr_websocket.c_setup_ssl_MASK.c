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
struct TYPE_2__ {int /*<<< orphan*/  ssl_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int /*<<< orphan*/  SSL_OP_NO_SSLv2 ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__ accept_ctx ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9(const char *cert_file, const char *key_file)
{
    FUNC6();
    FUNC5();
    FUNC0();

    accept_ctx.ssl_ctx = FUNC1(FUNC7());
    FUNC2(accept_ctx.ssl_ctx, SSL_OP_NO_SSLv2);

    /* load certificate and private key */
    if (FUNC4(accept_ctx.ssl_ctx, cert_file) != 1) {
        FUNC8(stderr, "an error occurred while trying to load server certificate file:%s\n", cert_file);
        return -1;
    }
    if (FUNC3(accept_ctx.ssl_ctx, key_file, SSL_FILETYPE_PEM) != 1) {
        FUNC8(stderr, "an error occurred while trying to load private key file:%s\n", key_file);
        return -1;
    }

    return 0;
}