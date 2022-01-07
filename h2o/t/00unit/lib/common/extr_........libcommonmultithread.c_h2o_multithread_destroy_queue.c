
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uv_handle_t ;
struct TYPE_7__ {int write; int read; } ;
struct TYPE_6__ {int inactive; int active; } ;
struct TYPE_8__ {TYPE_2__ async; int mutex; TYPE_1__ receivers; } ;
typedef TYPE_3__ h2o_multithread_queue_t ;


 int assert (int ) ;
 int close (int ) ;
 int free (TYPE_3__*) ;
 int h2o_linklist_is_empty (int *) ;
 int h2o_socket_close (int ) ;
 int h2o_socket_read_stop (int ) ;
 int libuv_destroy_delayed ;
 int pthread_mutex_destroy (int *) ;
 int uv_close (int *,int ) ;

void h2o_multithread_destroy_queue(h2o_multithread_queue_t *queue)
{
    assert(h2o_linklist_is_empty(&queue->receivers.active));
    assert(h2o_linklist_is_empty(&queue->receivers.inactive));
    pthread_mutex_destroy(&queue->mutex);




    h2o_socket_read_stop(queue->async.read);
    h2o_socket_close(queue->async.read);




    free(queue);

}
