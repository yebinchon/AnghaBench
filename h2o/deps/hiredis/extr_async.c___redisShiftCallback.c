
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* tail; TYPE_2__* head; } ;
typedef TYPE_1__ redisCallbackList ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef TYPE_2__ redisCallback ;


 int REDIS_ERR ;
 int REDIS_OK ;
 int free (TYPE_2__*) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static int __redisShiftCallback(redisCallbackList *list, redisCallback *target) {
    redisCallback *cb = list->head;
    if (cb != ((void*)0)) {
        list->head = cb->next;
        if (cb == list->tail)
            list->tail = ((void*)0);


        if (target != ((void*)0))
            memcpy(target,cb,sizeof(*cb));
        free(cb);
        return REDIS_OK;
    }
    return REDIS_ERR;
}
