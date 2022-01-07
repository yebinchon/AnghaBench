
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char uint64_t ;
typedef int tmp ;
struct TYPE_10__ {TYPE_2__* queue; int _messages; int _link; } ;
typedef TYPE_3__ h2o_multithread_receiver_t ;
struct TYPE_11__ {int link; } ;
typedef TYPE_4__ h2o_multithread_message_t ;
struct TYPE_12__ {int write; } ;
struct TYPE_8__ {int active; } ;
struct TYPE_9__ {TYPE_5__ async; int mutex; TYPE_1__ receivers; } ;


 scalar_t__ EINTR ;
 int assert (int) ;
 scalar_t__ errno ;
 int h2o_linklist_insert (int *,int *) ;
 scalar_t__ h2o_linklist_is_empty (int *) ;
 int h2o_linklist_is_linked (int *) ;
 int h2o_linklist_unlink (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int uv_async_send (TYPE_5__*) ;
 int write (int ,char*,int) ;

void h2o_multithread_send_message(h2o_multithread_receiver_t *receiver, h2o_multithread_message_t *message)
{
    int do_send = 0;

    pthread_mutex_lock(&receiver->queue->mutex);
    if (message != ((void*)0)) {
        assert(!h2o_linklist_is_linked(&message->link));
        if (h2o_linklist_is_empty(&receiver->_messages)) {
            h2o_linklist_unlink(&receiver->_link);
            h2o_linklist_insert(&receiver->queue->receivers.active, &receiver->_link);
            do_send = 1;
        }
        h2o_linklist_insert(&receiver->_messages, &message->link);
    } else {
        if (h2o_linklist_is_empty(&receiver->_messages))
            do_send = 1;
    }
    pthread_mutex_unlock(&receiver->queue->mutex);

    if (do_send) {




        uint64_t tmp = 1;
        while (write(receiver->queue->async.write, &tmp, sizeof(tmp)) == -1 && errno == EINTR)



            ;

    }
}
