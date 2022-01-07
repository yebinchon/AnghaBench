
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * buf; int * reply; TYPE_1__* fn; } ;
typedef TYPE_2__ redisReader ;
struct TYPE_5__ {int (* freeObject ) (int *) ;} ;


 int free (TYPE_2__*) ;
 int sdsfree (int *) ;
 int stub1 (int *) ;

void redisReaderFree(redisReader *r) {
    if (r->reply != ((void*)0) && r->fn && r->fn->freeObject)
        r->fn->freeObject(r->reply);
    if (r->buf != ((void*)0))
        sdsfree(r->buf);
    free(r);
}
