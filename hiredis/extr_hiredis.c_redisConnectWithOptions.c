
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int source_addr; int port; int ip; } ;
struct TYPE_13__ {scalar_t__ fd; int unix_socket; TYPE_1__ tcp; } ;
struct TYPE_14__ {int options; scalar_t__ type; int * timeout; TYPE_2__ endpoint; } ;
typedef TYPE_3__ redisOptions ;
struct TYPE_15__ {int flags; scalar_t__ fd; } ;
typedef TYPE_4__ redisContext ;


 int REDIS_BLOCK ;
 int REDIS_CONNECTED ;
 scalar_t__ REDIS_CONN_TCP ;
 scalar_t__ REDIS_CONN_UNIX ;
 scalar_t__ REDIS_CONN_USERFD ;
 scalar_t__ REDIS_INVALID_FD ;
 int REDIS_NO_AUTO_FREE ;
 int REDIS_OPT_NOAUTOFREE ;
 int REDIS_OPT_NONBLOCK ;
 int REDIS_OPT_REUSEADDR ;
 int REDIS_REUSEADDR ;
 int redisContextConnectBindTcp (TYPE_4__*,int ,int ,int *,int ) ;
 int redisContextConnectUnix (TYPE_4__*,int ,int *) ;
 TYPE_4__* redisContextInit (TYPE_3__ const*) ;
 int redisContextSetTimeout (TYPE_4__*,int ) ;

redisContext *redisConnectWithOptions(const redisOptions *options) {
    redisContext *c = redisContextInit(options);
    if (c == ((void*)0)) {
        return ((void*)0);
    }
    if (!(options->options & REDIS_OPT_NONBLOCK)) {
        c->flags |= REDIS_BLOCK;
    }
    if (options->options & REDIS_OPT_REUSEADDR) {
        c->flags |= REDIS_REUSEADDR;
    }
    if (options->options & REDIS_OPT_NOAUTOFREE) {
      c->flags |= REDIS_NO_AUTO_FREE;
    }

    if (options->type == REDIS_CONN_TCP) {
        redisContextConnectBindTcp(c, options->endpoint.tcp.ip,
                                   options->endpoint.tcp.port, options->timeout,
                                   options->endpoint.tcp.source_addr);
    } else if (options->type == REDIS_CONN_UNIX) {
        redisContextConnectUnix(c, options->endpoint.unix_socket,
                                options->timeout);
    } else if (options->type == REDIS_CONN_USERFD) {
        c->fd = options->endpoint.fd;
        c->flags |= REDIS_CONNECTED;
    } else {

        return ((void*)0);
    }
    if (options->timeout != ((void*)0) && (c->flags & REDIS_BLOCK) && c->fd != REDIS_INVALID_FD) {
        redisContextSetTimeout(c, *options->timeout);
    }
    return c;
}
