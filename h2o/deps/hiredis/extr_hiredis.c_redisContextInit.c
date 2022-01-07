
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * path; } ;
struct TYPE_7__ {int * source_addr; int * host; } ;
struct TYPE_9__ {char* errstr; int * reader; int * obuf; int * timeout; TYPE_2__ unix_sock; TYPE_1__ tcp; scalar_t__ err; } ;
typedef TYPE_3__ redisContext ;


 TYPE_3__* calloc (int,int) ;
 int redisFree (TYPE_3__*) ;
 int * redisReaderCreate () ;
 int * sdsempty () ;

__attribute__((used)) static redisContext *redisContextInit(void) {
    redisContext *c;

    c = calloc(1,sizeof(redisContext));
    if (c == ((void*)0))
        return ((void*)0);

    c->err = 0;
    c->errstr[0] = '\0';
    c->obuf = sdsempty();
    c->reader = redisReaderCreate();
    c->tcp.host = ((void*)0);
    c->tcp.source_addr = ((void*)0);
    c->unix_sock.path = ((void*)0);
    c->timeout = ((void*)0);

    if (c->obuf == ((void*)0) || c->reader == ((void*)0)) {
        redisFree(c);
        return ((void*)0);
    }

    return c;
}
