
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int _pending; } ;
typedef TYPE_1__ h2o_hostinfo_getaddr_req_t ;
struct TYPE_5__ {scalar_t__ num_threads_idle; scalar_t__ num_threads; int mutex; int cond; int pending; } ;


 int create_lookup_thread () ;
 scalar_t__ h2o_hostinfo_max_threads ;
 int h2o_linklist_insert (int *,int *) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_2__ queue ;

__attribute__((used)) static void dispatch_hostinfo_getaddr(h2o_hostinfo_getaddr_req_t *req)
{
    pthread_mutex_lock(&queue.mutex);

    h2o_linklist_insert(&queue.pending, &req->_pending);

    if (queue.num_threads_idle == 0 && queue.num_threads < h2o_hostinfo_max_threads)
        create_lookup_thread();

    pthread_cond_signal(&queue.cond);
    pthread_mutex_unlock(&queue.mutex);
}
