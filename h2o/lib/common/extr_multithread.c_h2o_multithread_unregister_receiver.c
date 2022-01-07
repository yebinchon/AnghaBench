
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int _link; int _messages; TYPE_2__* queue; } ;
typedef TYPE_1__ h2o_multithread_receiver_t ;
struct TYPE_6__ {int mutex; } ;
typedef TYPE_2__ h2o_multithread_queue_t ;


 int assert (int) ;
 int h2o_linklist_is_empty (int *) ;
 int h2o_linklist_unlink (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void h2o_multithread_unregister_receiver(h2o_multithread_queue_t *queue, h2o_multithread_receiver_t *receiver)
{
    assert(queue == receiver->queue);
    assert(h2o_linklist_is_empty(&receiver->_messages));
    pthread_mutex_lock(&queue->mutex);
    h2o_linklist_unlink(&receiver->_link);
    pthread_mutex_unlock(&queue->mutex);
}
