
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ssl_ctx; int * ssl; } ;
typedef TYPE_1__ redisSSLContext ;


 int SSL_CTX_free (int *) ;
 int SSL_free (int *) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void redisSSLFreeContext(void *privdata){
    redisSSLContext *rsc = privdata;

    if (!rsc) return;
    if (rsc->ssl) {
        SSL_free(rsc->ssl);
        rsc->ssl = ((void*)0);
    }
    if (rsc->ssl_ctx) {
        SSL_CTX_free(rsc->ssl_ctx);
        rsc->ssl_ctx = ((void*)0);
    }
    free(rsc);
}
