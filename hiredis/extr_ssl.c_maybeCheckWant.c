
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wantRead; int pendingWrite; } ;
typedef TYPE_1__ redisSSLContext ;


 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;

__attribute__((used)) static int maybeCheckWant(redisSSLContext *rssl, int rv) {




    if (rv == SSL_ERROR_WANT_READ) {
        rssl->wantRead = 1;
        return 1;
    } else if (rv == SSL_ERROR_WANT_WRITE) {
        rssl->pendingWrite = 1;
        return 1;
    } else {
        return 0;
    }
}
