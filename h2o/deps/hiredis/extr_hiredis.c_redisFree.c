
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* path; } ;
struct TYPE_6__ {TYPE_3__* source_addr; TYPE_3__* host; } ;
struct TYPE_8__ {scalar_t__ fd; struct TYPE_8__* timeout; TYPE_2__ unix_sock; TYPE_1__ tcp; int * reader; int * obuf; } ;
typedef TYPE_3__ redisContext ;


 int close (scalar_t__) ;
 int free (TYPE_3__*) ;
 int redisReaderFree (int *) ;
 int sdsfree (int *) ;

void redisFree(redisContext *c) {
    if (c == ((void*)0))
        return;
    if (c->fd > 0)
        close(c->fd);
    if (c->obuf != ((void*)0))
        sdsfree(c->obuf);
    if (c->reader != ((void*)0))
        redisReaderFree(c->reader);
    if (c->tcp.host)
        free(c->tcp.host);
    if (c->tcp.source_addr)
        free(c->tcp.source_addr);
    if (c->unix_sock.path)
        free(c->unix_sock.path);
    if (c->timeout)
        free(c->timeout);
    free(c);
}
