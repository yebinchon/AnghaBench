#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * ssl; int /*<<< orphan*/ * ssl_ctx; } ;
typedef  TYPE_1__ redisSSLContext ;
struct TYPE_7__ {int flags; scalar_t__ err; int /*<<< orphan*/  fd; TYPE_1__* privdata; int /*<<< orphan*/ * funcs; } ;
typedef  TYPE_2__ redisContext ;
typedef  int /*<<< orphan*/  err ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 () ; 
 char* FUNC2 (unsigned long) ; 
 int REDIS_BLOCK ; 
 int REDIS_ERR ; 
 int /*<<< orphan*/  REDIS_ERR_IO ; 
 int /*<<< orphan*/  REDIS_ERR_OTHER ; 
 int REDIS_OK ; 
 int SSL_ERROR_SYSCALL ; 
 int SSL_ERROR_WANT_READ ; 
 int SSL_ERROR_WANT_WRITE ; 
 int /*<<< orphan*/  SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC9 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  redisContextSSLFuncs ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(redisContext *c, SSL_CTX *ssl_ctx, SSL *ssl) {
    if (c->privdata) {
        FUNC8(c, REDIS_ERR_OTHER, "redisContext was already associated");
        return REDIS_ERR;
    }
    c->privdata = FUNC9(1, sizeof(redisSSLContext));

    c->funcs = &redisContextSSLFuncs;
    redisSSLContext *rssl = c->privdata;

    rssl->ssl_ctx = ssl_ctx;
    rssl->ssl = ssl;

    FUNC7(rssl->ssl, SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER);
    FUNC6(rssl->ssl, c->fd);
    FUNC5(rssl->ssl);

    FUNC0();
    int rv = FUNC3(rssl->ssl);
    if (rv == 1) {
        return REDIS_OK;
    }

    rv = FUNC4(rssl->ssl, rv);
    if (((c->flags & REDIS_BLOCK) == 0) &&
        (rv == SSL_ERROR_WANT_READ || rv == SSL_ERROR_WANT_WRITE)) {
        return REDIS_OK;
    }

    if (c->err == 0) {
        char err[512];
        if (rv == SSL_ERROR_SYSCALL)
            FUNC10(err,sizeof(err)-1,"SSL_connect failed: %s",FUNC11(errno));
        else {
            unsigned long e = FUNC1();
            FUNC10(err,sizeof(err)-1,"SSL_connect failed: %s",
                    FUNC2(e));
        }
        FUNC8(c, REDIS_ERR_IO, err);
    }
    return REDIS_ERR;
}