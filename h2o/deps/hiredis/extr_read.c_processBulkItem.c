
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t ridx; char* buf; int pos; int len; void* reply; TYPE_1__* fn; int * rstack; } ;
typedef TYPE_2__ redisReader ;
typedef int redisReadTask ;
struct TYPE_6__ {void* (* createString ) (int *,char*,long) ;void* (* createNil ) (int *) ;} ;


 int REDIS_ERR ;
 int REDIS_OK ;
 scalar_t__ REDIS_REPLY_NIL ;
 scalar_t__ REDIS_REPLY_STRING ;
 int __redisReaderSetErrorOOM (TYPE_2__*) ;
 int moveToNextTask (TYPE_2__*) ;
 long readLongLong (char*) ;
 char* seekNewline (char*,int) ;
 void* stub1 (int *) ;
 void* stub2 (int *,char*,long) ;

__attribute__((used)) static int processBulkItem(redisReader *r) {
    redisReadTask *cur = &(r->rstack[r->ridx]);
    void *obj = ((void*)0);
    char *p, *s;
    long len;
    unsigned long bytelen;
    int success = 0;

    p = r->buf+r->pos;
    s = seekNewline(p,r->len-r->pos);
    if (s != ((void*)0)) {
        p = r->buf+r->pos;
        bytelen = s-(r->buf+r->pos)+2;
        len = readLongLong(p);

        if (len < 0) {

            if (r->fn && r->fn->createNil)
                obj = r->fn->createNil(cur);
            else
                obj = (void*)REDIS_REPLY_NIL;
            success = 1;
        } else {

            bytelen += len+2;
            if (r->pos+bytelen <= r->len) {
                if (r->fn && r->fn->createString)
                    obj = r->fn->createString(cur,s+2,len);
                else
                    obj = (void*)REDIS_REPLY_STRING;
                success = 1;
            }
        }


        if (success) {
            if (obj == ((void*)0)) {
                __redisReaderSetErrorOOM(r);
                return REDIS_ERR;
            }

            r->pos += bytelen;


            if (r->ridx == 0) r->reply = obj;
            moveToNextTask(r);
            return REDIS_OK;
        }
    }

    return REDIS_ERR;
}
