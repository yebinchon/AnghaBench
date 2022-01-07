
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* priv_data; TYPE_1__* prot; } ;
struct TYPE_9__ {int abort_request; TYPE_4__* inner; scalar_t__ inner_options; int file_mutex; int cond_wakeup_exit; int cond_wakeup_main; int cond_wakeup_file_background; scalar_t__ task_is_running; scalar_t__ cache_file_forwards_capacity; } ;
struct TYPE_8__ {TYPE_3__* priv_data; } ;
struct TYPE_7__ {int (* url_close ) (TYPE_4__*) ;} ;
typedef TYPE_2__ IjkURLContext ;
typedef TYPE_3__ IjkIOCacheContext ;


 int ENOSYS ;
 int IJKAVERROR (int ) ;
 int ijk_av_dict_free (scalar_t__*) ;
 int ijk_av_freep (TYPE_4__**) ;
 int pthread_cond_destroy (int *) ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static int ijkio_cache_close(IjkURLContext *h) {
    IjkIOCacheContext *c = h->priv_data;
    int ret = 0;

    if (!c || !c->inner || !c->inner->prot)
        return IJKAVERROR(ENOSYS);

    if (c->cache_file_forwards_capacity) {
        pthread_mutex_lock(&c->file_mutex);
        c->abort_request = 1;
        pthread_cond_signal(&c->cond_wakeup_file_background);
        while (c->task_is_running) {
            pthread_cond_wait(&c->cond_wakeup_exit, &c->file_mutex);
        }
        pthread_mutex_unlock(&c->file_mutex);
    } else {
        c->abort_request = 1;
    }

    pthread_cond_destroy(&c->cond_wakeup_file_background);
    pthread_cond_destroy(&c->cond_wakeup_main);
    pthread_cond_destroy(&c->cond_wakeup_exit);
    pthread_mutex_destroy(&c->file_mutex);

    ret = c->inner->prot->url_close(c->inner);

    if (c->inner_options) {
        ijk_av_dict_free(&c->inner_options);
    }
    ijk_av_freep(&c->inner->priv_data);

    ijk_av_freep(&c->inner);
    return ret;
}
