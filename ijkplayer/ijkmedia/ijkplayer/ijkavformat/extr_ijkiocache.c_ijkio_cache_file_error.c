
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_9__ {int file_handle_retry_count; int file_error_count; int fd; int cache_file_close; int * tree_info; scalar_t__ cur_file_no; int cache_info_map; TYPE_1__* ijkio_app_ctx; int cache_file_path; int read_logical_pos; int file_logical_pos; scalar_t__ io_eof_reached; scalar_t__ file_inner_pos; scalar_t__ cache_physical_pos; scalar_t__* last_physical_pos; } ;
struct TYPE_8__ {TYPE_2__* ijkio_app_ctx; TYPE_4__* priv_data; } ;
struct TYPE_7__ {int mutex; } ;
struct TYPE_6__ {int fd; int shared; } ;
typedef TYPE_3__ IjkURLContext ;
typedef TYPE_4__ IjkIOCacheContext ;
typedef int IjkCacheTreeInfo ;


 int AV_LOG_WARNING ;
 int FILE_RW_ERROR ;
 int O_BINARY ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int av_log (int *,int ,char*) ;
 int * calloc (int,int) ;
 int close (int) ;
 int ijk_map_clear (int ) ;
 int ijk_map_put (int ,int ,int *) ;
 int ijk_map_traversal_handle (int ,int *,int ) ;
 int open (int ,int,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int remove (int ) ;
 int tree_destroy ;

__attribute__((used)) static int ijkio_cache_file_error(IjkURLContext *h) {
    IjkIOCacheContext *c = h->priv_data;

    av_log(((void*)0), AV_LOG_WARNING, "ijkio_cache_file_error\n");
    if (c && c->file_handle_retry_count > 3) {
        pthread_mutex_lock(&h->ijkio_app_ctx->mutex);
        c->file_error_count++;
        if (!c->ijkio_app_ctx->shared) {
            ijk_map_traversal_handle(c->cache_info_map, ((void*)0), tree_destroy);
            ijk_map_clear(c->cache_info_map);
            c->tree_info = ((void*)0);
            *c->last_physical_pos = 0;
            c->cache_physical_pos = 0;
            c->file_inner_pos = 0;
            c->io_eof_reached = 0;
            c->file_logical_pos = c->read_logical_pos;
            close(c->fd);
            c->fd = -1;
            c->ijkio_app_ctx->fd = -1;
            if (c->file_error_count > 3) {
                c->cache_file_close = 1;
                remove(c->cache_file_path);
                av_log(((void*)0), AV_LOG_WARNING, "ijkio_cache_file_error will remove file\n");
                goto fail;
            }
            c->fd = open(c->cache_file_path, O_RDWR | O_BINARY | O_CREAT | O_TRUNC, 0600);
            c->ijkio_app_ctx->fd = c->fd;
            if (c->fd >= 0) {
                c->file_handle_retry_count = 0;
                c->tree_info = calloc(1, sizeof(IjkCacheTreeInfo));
                if (!c->tree_info) {
                    c->cache_file_close = 1;
                    goto fail;
                }
                ijk_map_put(c->cache_info_map, (int64_t)c->cur_file_no, c->tree_info);
            } else {
                av_log(((void*)0), AV_LOG_WARNING, "ijkio_cache_file_error will cache_file_close\n");
                c->cache_file_close = 1;
                goto fail;
            }
        }
        pthread_mutex_unlock(&h->ijkio_app_ctx->mutex);
    }

    return 0;

fail:
    pthread_mutex_unlock(&h->ijkio_app_ctx->mutex);
    return FILE_RW_ERROR;
}
