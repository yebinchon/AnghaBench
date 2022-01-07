
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {size_t ridx; void* reply; int privdata; TYPE_3__* rstack; TYPE_1__* fn; } ;
typedef TYPE_2__ redisReader ;
struct TYPE_13__ {long elements; int type; int privdata; struct TYPE_13__* parent; int * obj; scalar_t__ idx; } ;
typedef TYPE_3__ redisReadTask ;
struct TYPE_11__ {void* (* createArray ) (TYPE_3__*,long) ;void* (* createNil ) (TYPE_3__*) ;} ;


 int REDIS_ERR ;
 int REDIS_ERR_PROTOCOL ;
 int REDIS_OK ;
 scalar_t__ REDIS_REPLY_ARRAY ;
 scalar_t__ REDIS_REPLY_NIL ;
 int __redisReaderSetError (TYPE_2__*,int ,char*) ;
 int __redisReaderSetErrorOOM (TYPE_2__*) ;
 int moveToNextTask (TYPE_2__*) ;
 char* readLine (TYPE_2__*,int *) ;
 long readLongLong (char*) ;
 void* stub1 (TYPE_3__*) ;
 void* stub2 (TYPE_3__*,long) ;

__attribute__((used)) static int processMultiBulkItem(redisReader *r) {
    redisReadTask *cur = &(r->rstack[r->ridx]);
    void *obj;
    char *p;
    long elements;
    int root = 0;


    if (r->ridx == 8) {
        __redisReaderSetError(r,REDIS_ERR_PROTOCOL,
            "No support for nested multi bulk replies with depth > 7");
        return REDIS_ERR;
    }

    if ((p = readLine(r,((void*)0))) != ((void*)0)) {
        elements = readLongLong(p);
        root = (r->ridx == 0);

        if (elements == -1) {
            if (r->fn && r->fn->createNil)
                obj = r->fn->createNil(cur);
            else
                obj = (void*)REDIS_REPLY_NIL;

            if (obj == ((void*)0)) {
                __redisReaderSetErrorOOM(r);
                return REDIS_ERR;
            }

            moveToNextTask(r);
        } else {
            if (r->fn && r->fn->createArray)
                obj = r->fn->createArray(cur,elements);
            else
                obj = (void*)REDIS_REPLY_ARRAY;

            if (obj == ((void*)0)) {
                __redisReaderSetErrorOOM(r);
                return REDIS_ERR;
            }


            if (elements > 0) {
                cur->elements = elements;
                cur->obj = obj;
                r->ridx++;
                r->rstack[r->ridx].type = -1;
                r->rstack[r->ridx].elements = -1;
                r->rstack[r->ridx].idx = 0;
                r->rstack[r->ridx].obj = ((void*)0);
                r->rstack[r->ridx].parent = cur;
                r->rstack[r->ridx].privdata = r->privdata;
            } else {
                moveToNextTask(r);
            }
        }


        if (root) r->reply = obj;
        return REDIS_OK;
    }

    return REDIS_ERR;
}
