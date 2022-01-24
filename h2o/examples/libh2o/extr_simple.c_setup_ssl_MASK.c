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
struct TYPE_2__ {int /*<<< orphan*/  ssl_ctx; int /*<<< orphan*/ * libmemcached_receiver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int /*<<< orphan*/  SSL_OP_NO_SSLv2 ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ USE_MEMCACHED ; 
 TYPE_1__ accept_ctx ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  h2o_http2_alpn_protocols ; 
 int /*<<< orphan*/  h2o_http2_npn_protocols ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  libmemcached_receiver ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC16(const char *cert_file, const char *key_file, const char *ciphers)
{
    FUNC8();
    FUNC7();
    FUNC0();

    accept_ctx.ssl_ctx = FUNC1(FUNC9());
    FUNC4(accept_ctx.ssl_ctx, SSL_OP_NO_SSLv2);

    if (USE_MEMCACHED) {
        accept_ctx.libmemcached_receiver = &libmemcached_receiver;
        FUNC11(FUNC12("127.0.0.1", 11211, 0, 1, "h2o:ssl-resumption:"),
                                                  86400);
        FUNC13(accept_ctx.ssl_ctx);
    }

#ifdef SSL_CTX_set_ecdh_auto
    SSL_CTX_set_ecdh_auto(accept_ctx.ssl_ctx, 1);
#endif

    /* load certificate and private key */
    if (FUNC6(accept_ctx.ssl_ctx, cert_file) != 1) {
        FUNC10(stderr, "an error occurred while trying to load server certificate file:%s\n", cert_file);
        return -1;
    }
    if (FUNC5(accept_ctx.ssl_ctx, key_file, SSL_FILETYPE_PEM) != 1) {
        FUNC10(stderr, "an error occurred while trying to load private key file:%s\n", key_file);
        return -1;
    }

    if (FUNC2(accept_ctx.ssl_ctx, ciphers) != 1) {
        FUNC10(stderr, "ciphers could not be set: %s\n", ciphers);
        return -1;
    }

/* setup protocol negotiation methods */
#if H2O_USE_NPN
    h2o_ssl_register_npn_protocols(accept_ctx.ssl_ctx, h2o_http2_npn_protocols);
#endif
#if H2O_USE_ALPN
    h2o_ssl_register_alpn_protocols(accept_ctx.ssl_ctx, h2o_http2_alpn_protocols);
#endif

    return 0;
}