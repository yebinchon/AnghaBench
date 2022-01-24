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
typedef  int /*<<< orphan*/  redisContext ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int REDIS_ERR ; 
 int /*<<< orphan*/  REDIS_ERR_OTHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int SSL_OP_NO_SSLv2 ; 
 int SSL_OP_NO_SSLv3 ; 
 int /*<<< orphan*/  SSL_VERIFY_PEER ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sslLogCallback ; 

int FUNC16(redisContext *c, const char *capath,
                          const char *certpath, const char *keypath, const char *servername) {

    SSL_CTX *ssl_ctx = NULL;
    SSL *ssl = NULL;

    /* Initialize global OpenSSL stuff */
    static int isInit = 0;
    if (!isInit) {
        isInit = 1;
        FUNC9();
#ifdef HIREDIS_USE_CRYPTO_LOCKS
        initOpensslLocks();
#endif
    }

    ssl_ctx = FUNC2(FUNC12());
    if (!ssl_ctx) {
        FUNC13(c, REDIS_ERR_OTHER, "Failed to create SSL_CTX");
        goto error;
    }

#ifdef HIREDIS_SSL_TRACE
    SSL_CTX_set_info_callback(ssl_ctx, sslLogCallback);
#endif
    FUNC4(ssl_ctx, SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3);
    FUNC5(ssl_ctx, SSL_VERIFY_PEER, NULL);
    if ((certpath != NULL && keypath == NULL) || (keypath != NULL && certpath == NULL)) {
        FUNC13(c, REDIS_ERR_OTHER, "certpath and keypath must be specified together");
        goto error;
    }

    if (capath) {
        if (!FUNC1(ssl_ctx, capath, NULL)) {
            FUNC13(c, REDIS_ERR_OTHER, "Invalid CA certificate");
            goto error;
        }
    }
    if (certpath) {
        if (!FUNC7(ssl_ctx, certpath)) {
            FUNC13(c, REDIS_ERR_OTHER, "Invalid client certificate");
            goto error;
        }
        if (!FUNC6(ssl_ctx, keypath, SSL_FILETYPE_PEM)) {
            FUNC13(c, REDIS_ERR_OTHER, "Invalid client key");
            goto error;
        }
    }

    ssl = FUNC10(ssl_ctx);
    if (!ssl) {
        FUNC13(c, REDIS_ERR_OTHER, "Couldn't create new SSL instance");
        goto error;
    }
    if (servername) {
        if (!FUNC11(ssl, servername)) {
            FUNC13(c, REDIS_ERR_OTHER, "Couldn't set server name indication");
            goto error;
        }
    }

    return FUNC15(c, ssl_ctx, ssl);

error:
    if (ssl) FUNC8(ssl);
    if (ssl_ctx) FUNC0(ssl_ctx);
    return REDIS_ERR;
}