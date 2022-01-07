
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uv_async_cb ;
struct TYPE_7__ {int inactive; int active; } ;
struct TYPE_8__ {TYPE_1__ receivers; int mutex; int async; } ;
typedef TYPE_2__ h2o_multithread_queue_t ;
typedef int h2o_loop_t ;


 int h2o_linklist_init_anchor (int *) ;
 TYPE_2__* h2o_mem_alloc (int) ;
 int init_async (TYPE_2__*,int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int pthread_mutex_init (int *,int *) ;
 scalar_t__ queue_cb ;
 int uv_async_init (int *,int *,int ) ;

h2o_multithread_queue_t *h2o_multithread_create_queue(h2o_loop_t *loop)
{
    h2o_multithread_queue_t *queue = h2o_mem_alloc(sizeof(*queue));
    memset(queue, 0, sizeof(*queue));




    init_async(queue, loop);

    pthread_mutex_init(&queue->mutex, ((void*)0));
    h2o_linklist_init_anchor(&queue->receivers.active);
    h2o_linklist_init_anchor(&queue->receivers.inactive);

    return queue;
}
