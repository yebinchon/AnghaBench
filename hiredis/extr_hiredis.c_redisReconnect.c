
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int path; } ;
struct TYPE_11__ {int source_addr; int port; int host; } ;
struct TYPE_13__ {scalar_t__ connection_type; int timeout; TYPE_3__ unix_sock; TYPE_2__ tcp; int reader; int obuf; int * privdata; TYPE_1__* funcs; int errstr; scalar_t__ err; } ;
typedef TYPE_4__ redisContext ;
struct TYPE_10__ {int (* free_privdata ) (int *) ;} ;


 scalar_t__ REDIS_CONN_TCP ;
 scalar_t__ REDIS_CONN_UNIX ;
 int REDIS_ERR ;
 int REDIS_ERR_OTHER ;
 int __redisSetError (TYPE_4__*,int ,char*) ;
 int memset (int ,char,int ) ;
 int redisContextConnectBindTcp (TYPE_4__*,int ,int ,int ,int ) ;
 int redisContextConnectUnix (TYPE_4__*,int ,int ) ;
 int redisNetClose (TYPE_4__*) ;
 int redisReaderCreate () ;
 int redisReaderFree (int ) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int strlen (int ) ;
 int stub1 (int *) ;

int redisReconnect(redisContext *c) {
    c->err = 0;
    memset(c->errstr, '\0', strlen(c->errstr));

    if (c->privdata && c->funcs->free_privdata) {
        c->funcs->free_privdata(c->privdata);
        c->privdata = ((void*)0);
    }

    redisNetClose(c);

    sdsfree(c->obuf);
    redisReaderFree(c->reader);

    c->obuf = sdsempty();
    c->reader = redisReaderCreate();

    if (c->connection_type == REDIS_CONN_TCP) {
        return redisContextConnectBindTcp(c, c->tcp.host, c->tcp.port,
                c->timeout, c->tcp.source_addr);
    } else if (c->connection_type == REDIS_CONN_UNIX) {
        return redisContextConnectUnix(c, c->unix_sock.path, c->timeout);
    } else {


        __redisSetError(c,REDIS_ERR_OTHER,"Not enough information to reconnect");
    }

    return REDIS_ERR;
}
