
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; } ;
struct TYPE_5__ {TYPE_1__ endpoint; int type; int member_0; } ;
typedef TYPE_2__ redisOptions ;
typedef int redisFD ;
typedef int redisContext ;


 int REDIS_CONN_USERFD ;
 int * redisConnectWithOptions (TYPE_2__*) ;

redisContext *redisConnectFd(redisFD fd) {
    redisOptions options = {0};
    options.type = REDIS_CONN_USERFD;
    options.endpoint.fd = fd;
    return redisConnectWithOptions(&options);
}
