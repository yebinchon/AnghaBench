
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_10__ {TYPE_1__* prot; } ;
struct TYPE_9__ {scalar_t__ logical_size; scalar_t__ read_logical_pos; int seek_request; int seek_whence; scalar_t__ seek_ret; int file_mutex; int cond_wakeup_main; int cond_wakeup_file_background; scalar_t__ seek_completed; scalar_t__ seek_pos; int cache_file_forwards_capacity; TYPE_4__* inner; scalar_t__ cache_file_close; } ;
struct TYPE_8__ {TYPE_3__* priv_data; } ;
struct TYPE_7__ {scalar_t__ (* url_seek ) (TYPE_4__*,scalar_t__,int) ;} ;
typedef TYPE_2__ IjkURLContext ;
typedef TYPE_3__ IjkIOCacheContext ;


 int EINVAL ;
 int ENOSYS ;
 scalar_t__ IJKAVERROR (int ) ;
 scalar_t__ IJKAVERROR_EXIT ;
 int IJKAVSEEK_SIZE ;
 int SEEK_CUR ;
 int SEEK_SET ;
 scalar_t__ ijkio_cache_check_interrupt (TYPE_2__*) ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ stub1 (TYPE_4__*,scalar_t__,int) ;

__attribute__((used)) static int64_t ijkio_cache_seek(IjkURLContext *h, int64_t pos, int whence) {
    IjkIOCacheContext *c= h->priv_data;
    int64_t ret = 0;
    int64_t new_logical_pos = 0;
    if (!c || !c->inner || !c->inner->prot)
        return IJKAVERROR(ENOSYS);

    if (whence == IJKAVSEEK_SIZE) {
        return c->logical_size;
    } else if (whence == SEEK_CUR) {
        new_logical_pos = pos + c->read_logical_pos;
    } else if (whence == SEEK_SET){
        new_logical_pos = pos;
    } else {
        return IJKAVERROR(EINVAL);
    }
    if (new_logical_pos < 0)
        return IJKAVERROR(EINVAL);

    if (c->cache_file_close) {
        return c->inner->prot->url_seek(c->inner, new_logical_pos, SEEK_SET);
    }

    if (!c->cache_file_forwards_capacity) {
        c->read_logical_pos = new_logical_pos;
        return new_logical_pos;
    }

    pthread_mutex_lock(&c->file_mutex);
    c->seek_request = 1;
    c->seek_pos = new_logical_pos;
    c->seek_whence = SEEK_SET;
    c->seek_completed = 0;

    while (1) {
        if (ijkio_cache_check_interrupt(h)) {
            ret = IJKAVERROR_EXIT;
            break;
        }
        if (c->seek_completed) {
            ret = c->seek_ret;
            break;
        }
        pthread_cond_signal(&c->cond_wakeup_file_background);
        pthread_cond_wait(&c->cond_wakeup_main, &c->file_mutex);
    }

    pthread_mutex_unlock(&c->file_mutex);
    return ret;
}
