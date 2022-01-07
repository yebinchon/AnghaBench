
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * _cb; int _pending; } ;
typedef TYPE_1__ h2o_hostinfo_getaddr_req_t ;
struct TYPE_6__ {int mutex; } ;


 int free (TYPE_1__*) ;
 scalar_t__ h2o_linklist_is_linked (int *) ;
 int h2o_linklist_unlink (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_2__ queue ;

void h2o_hostinfo_getaddr_cancel(h2o_hostinfo_getaddr_req_t *req)
{
    int should_free = 0;

    pthread_mutex_lock(&queue.mutex);

    if (h2o_linklist_is_linked(&req->_pending)) {
        h2o_linklist_unlink(&req->_pending);
        should_free = 1;
    } else {
        req->_cb = ((void*)0);
    }

    pthread_mutex_unlock(&queue.mutex);

    if (should_free)
        free(req);
}
