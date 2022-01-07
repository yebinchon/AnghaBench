
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int path; } ;
struct TYPE_8__ {int source_addr; int port; int host; } ;
struct TYPE_10__ {scalar_t__ fd; scalar_t__ connection_type; int timeout; TYPE_2__ unix_sock; TYPE_1__ tcp; int reader; int obuf; int errstr; scalar_t__ err; } ;
typedef TYPE_3__ redisContext ;


 scalar_t__ REDIS_CONN_TCP ;
 scalar_t__ REDIS_CONN_UNIX ;
 int REDIS_ERR ;
 int REDIS_ERR_OTHER ;
 int __redisSetError (TYPE_3__*,int ,char*) ;
 int close (scalar_t__) ;
 int memset (int ,char,int ) ;
 int redisContextConnectBindTcp (TYPE_3__*,int ,int ,int ,int ) ;
 int redisContextConnectUnix (TYPE_3__*,int ,int ) ;
 int redisReaderCreate () ;
 int redisReaderFree (int ) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int strlen (int ) ;

int redisReconnect(redisContext *c) {
    c->err = 0;
    memset(c->errstr, '\0', strlen(c->errstr));

    if (c->fd > 0) {
        close(c->fd);
    }

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
