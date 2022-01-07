
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_9__ {scalar_t__ cache_max_capacity; int fd; int read_logical_pos; int file_logical_pos; scalar_t__ io_eof_reached; scalar_t__ cache_physical_pos; scalar_t__* last_physical_pos; int tree_info; scalar_t__ cur_file_no; int cache_info_map; TYPE_1__* ijkio_app_ctx; } ;
struct TYPE_8__ {TYPE_2__* ijkio_app_ctx; TYPE_4__* priv_data; } ;
struct TYPE_7__ {int mutex; } ;
struct TYPE_6__ {int shared; } ;
typedef TYPE_3__ IjkURLContext ;
typedef TYPE_4__ IjkIOCacheContext ;
typedef int IjkCacheTreeInfo ;


 int AV_LOG_WARNING ;
 scalar_t__ FILE_RW_ERROR ;
 int SEEK_SET ;
 int av_log (int *,int ,char*) ;
 int ijk_map_clear (int ) ;
 int ijk_map_put (int ,scalar_t__,int ) ;
 int ijk_map_remove (int ,scalar_t__) ;
 int ijk_map_traversal_handle (int ,int *,int ) ;
 scalar_t__ lseek (int ,int ,int ) ;
 int memset (int ,int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tree_destroy ;

__attribute__((used)) static int64_t ijkio_cache_file_overrang(IjkURLContext *h, int64_t *cur_pos, int size) {
    IjkIOCacheContext *c = h->priv_data;
    av_log(((void*)0), AV_LOG_WARNING, "ijkio_cache_file_overrang will flush file\n");

    pthread_mutex_lock(&h->ijkio_app_ctx->mutex);

    if (!c->ijkio_app_ctx->shared) {
        ijk_map_remove(c->cache_info_map, (int64_t)c->cur_file_no);
        ijk_map_traversal_handle(c->cache_info_map, ((void*)0), tree_destroy);
        ijk_map_clear(c->cache_info_map);
        memset(c->tree_info, 0, sizeof(IjkCacheTreeInfo));
        ijk_map_put(c->cache_info_map, (int64_t)c->cur_file_no, c->tree_info);
        *c->last_physical_pos = 0;
        c->cache_physical_pos = 0;
        c->io_eof_reached = 0;
        c->file_logical_pos = c->read_logical_pos;
        *cur_pos = lseek(c->fd, 0, SEEK_SET);
        if (*cur_pos < 0) {
            goto fail;
        }
    } else {
        goto fail;
    }

    pthread_mutex_unlock(&h->ijkio_app_ctx->mutex);
    return c->cache_max_capacity;

fail:
    pthread_mutex_unlock(&h->ijkio_app_ctx->mutex);
    return FILE_RW_ERROR;
}
