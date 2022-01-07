
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ssl; } ;
typedef TYPE_1__ redisSSLContext ;
struct TYPE_7__ {int flags; TYPE_1__* privdata; } ;
typedef TYPE_2__ redisContext ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int REDIS_BLOCK ;
 int REDIS_ERR_EOF ;
 int REDIS_ERR_IO ;
 int SSL_get_error (int ,int) ;
 int SSL_read (int ,char*,size_t) ;
 int __redisSetError (TYPE_2__*,int ,char const*) ;
 scalar_t__ errno ;
 scalar_t__ maybeCheckWant (TYPE_1__*,int) ;

__attribute__((used)) static int redisSSLRead(redisContext *c, char *buf, size_t bufcap) {
    redisSSLContext *rssl = c->privdata;

    int nread = SSL_read(rssl->ssl, buf, bufcap);
    if (nread > 0) {
        return nread;
    } else if (nread == 0) {
        __redisSetError(c, REDIS_ERR_EOF, "Server closed the connection");
        return -1;
    } else {
        int err = SSL_get_error(rssl->ssl, nread);
        if (c->flags & REDIS_BLOCK) {






            if (errno == EINTR) {
                return 0;
            } else {
                const char *msg = ((void*)0);
                if (errno == EAGAIN) {
                    msg = "Resource temporarily unavailable";
                }
                __redisSetError(c, REDIS_ERR_IO, msg);
                return -1;
            }
        }




        if (maybeCheckWant(rssl, err)) {
            return 0;
        } else {
            __redisSetError(c, REDIS_ERR_IO, ((void*)0));
            return -1;
        }
    }
}
