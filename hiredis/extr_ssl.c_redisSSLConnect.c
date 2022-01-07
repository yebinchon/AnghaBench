
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * ssl; int * ssl_ctx; } ;
typedef TYPE_1__ redisSSLContext ;
struct TYPE_7__ {int flags; scalar_t__ err; int fd; TYPE_1__* privdata; int * funcs; } ;
typedef TYPE_2__ redisContext ;
typedef int err ;
typedef int SSL_CTX ;
typedef int SSL ;


 int ERR_clear_error () ;
 unsigned long ERR_peek_last_error () ;
 char* ERR_reason_error_string (unsigned long) ;
 int REDIS_BLOCK ;
 int REDIS_ERR ;
 int REDIS_ERR_IO ;
 int REDIS_ERR_OTHER ;
 int REDIS_OK ;
 int SSL_ERROR_SYSCALL ;
 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER ;
 int SSL_connect (int *) ;
 int SSL_get_error (int *,int) ;
 int SSL_set_connect_state (int *) ;
 int SSL_set_fd (int *,int ) ;
 int SSL_set_mode (int *,int ) ;
 int __redisSetError (TYPE_2__*,int ,char*) ;
 TYPE_1__* calloc (int,int) ;
 int errno ;
 int redisContextSSLFuncs ;
 int snprintf (char*,int,char*,char*) ;
 char* strerror (int ) ;

__attribute__((used)) static int redisSSLConnect(redisContext *c, SSL_CTX *ssl_ctx, SSL *ssl) {
    if (c->privdata) {
        __redisSetError(c, REDIS_ERR_OTHER, "redisContext was already associated");
        return REDIS_ERR;
    }
    c->privdata = calloc(1, sizeof(redisSSLContext));

    c->funcs = &redisContextSSLFuncs;
    redisSSLContext *rssl = c->privdata;

    rssl->ssl_ctx = ssl_ctx;
    rssl->ssl = ssl;

    SSL_set_mode(rssl->ssl, SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER);
    SSL_set_fd(rssl->ssl, c->fd);
    SSL_set_connect_state(rssl->ssl);

    ERR_clear_error();
    int rv = SSL_connect(rssl->ssl);
    if (rv == 1) {
        return REDIS_OK;
    }

    rv = SSL_get_error(rssl->ssl, rv);
    if (((c->flags & REDIS_BLOCK) == 0) &&
        (rv == SSL_ERROR_WANT_READ || rv == SSL_ERROR_WANT_WRITE)) {
        return REDIS_OK;
    }

    if (c->err == 0) {
        char err[512];
        if (rv == SSL_ERROR_SYSCALL)
            snprintf(err,sizeof(err)-1,"SSL_connect failed: %s",strerror(errno));
        else {
            unsigned long e = ERR_peek_last_error();
            snprintf(err,sizeof(err)-1,"SSL_connect failed: %s",
                    ERR_reason_error_string(e));
        }
        __redisSetError(c, REDIS_ERR_IO, err);
    }
    return REDIS_ERR;
}
