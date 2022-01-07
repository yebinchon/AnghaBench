
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


 int REDIS_ERR_OOM ;
 int REDIS_OK ;
 TYPE_2__* malloc (int) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static int __redisPushCallback(redisCallbackList *list, redisCallback *source) {
    redisCallback *cb;


    cb = malloc(sizeof(*cb));
    if (cb == ((void*)0))
        return REDIS_ERR_OOM;

    if (source != ((void*)0)) {
        memcpy(cb,source,sizeof(*cb));
        cb->next = ((void*)0);
    }


    if (list->head == ((void*)0))
        list->head = cb;
    if (list->tail != ((void*)0))
        list->tail->next = cb;
    list->tail = cb;
    return REDIS_OK;
}
