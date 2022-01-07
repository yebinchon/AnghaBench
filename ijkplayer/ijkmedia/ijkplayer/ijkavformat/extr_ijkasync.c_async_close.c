
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int abort_request; int ring; int inner; int mutex; int cond_wakeup_main; int cond_wakeup_background; int async_buffer_thread; } ;
typedef TYPE_2__ Context ;


 int AV_LOG_ERROR ;
 int av_err2str (int) ;
 int av_log (TYPE_1__*,int ,char*,int ) ;
 int ffurl_close (int ) ;
 int pthread_cond_destroy (int *) ;
 int pthread_cond_signal (int *) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ring_destroy (int *) ;

__attribute__((used)) static int async_close(URLContext *h)
{
    Context *c = h->priv_data;
    int ret;

    pthread_mutex_lock(&c->mutex);
    c->abort_request = 1;
    pthread_cond_signal(&c->cond_wakeup_background);
    pthread_mutex_unlock(&c->mutex);

    ret = pthread_join(c->async_buffer_thread, ((void*)0));
    if (ret != 0)
        av_log(h, AV_LOG_ERROR, "pthread_join(): %s\n", av_err2str(ret));

    pthread_cond_destroy(&c->cond_wakeup_background);
    pthread_cond_destroy(&c->cond_wakeup_main);
    pthread_mutex_destroy(&c->mutex);
    ffurl_close(c->inner);
    ring_destroy(&c->ring);

    return 0;
}
