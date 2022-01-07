
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_3__ {int addrlen; scalar_t__ saddr; int fd; } ;
typedef TYPE_1__ redisContext ;






 int REDIS_ERR ;
 int REDIS_OK ;
 int connect (int ,struct sockaddr const*,int ) ;
 int errno ;

int redisCheckConnectDone(redisContext *c, int *completed) {
    int rc = connect(c->fd, (const struct sockaddr *)c->saddr, c->addrlen);
    if (rc == 0) {
        *completed = 1;
        return REDIS_OK;
    }
    switch (errno) {
    case 129:
        *completed = 1;
        return REDIS_OK;
    case 131:
    case 130:
    case 128:
        *completed = 0;
        return REDIS_OK;
    default:
        return REDIS_ERR;
    }
}
