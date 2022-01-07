
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ redisReply ;


 TYPE_1__* calloc (int,int) ;

__attribute__((used)) static redisReply *createReplyObject(int type) {
    redisReply *r = calloc(1,sizeof(*r));

    if (r == ((void*)0))
        return ((void*)0);

    r->type = type;
    return r;
}
