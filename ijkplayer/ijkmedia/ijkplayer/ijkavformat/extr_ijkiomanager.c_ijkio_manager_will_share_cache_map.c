
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ijkio_app_ctx; int cache_map_path; } ;
struct TYPE_4__ {int shared; scalar_t__ fd; int mutex; int cache_info_map; } ;
typedef TYPE_2__ IjkIOManagerContext ;
typedef int FILE ;


 int AV_LOG_INFO ;
 int av_log (int *,int ,char*) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fsync (scalar_t__) ;
 int ijk_map_traversal_handle (int ,int *,int ) ;
 int ijkio_manager_save_tree_to_file ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int strlen (int ) ;

void ijkio_manager_will_share_cache_map(IjkIOManagerContext *h) {
    av_log(((void*)0), AV_LOG_INFO, "will share cache\n");
    if (!h || !h->ijkio_app_ctx || !strlen(h->cache_map_path)) {
        return;
    }

    pthread_mutex_lock(&h->ijkio_app_ctx->mutex);
    FILE *map_tree_info_fp = fopen(h->cache_map_path, "w");
    if (!map_tree_info_fp) {
        pthread_mutex_unlock(&h->ijkio_app_ctx->mutex);
        return;
    }
    h->ijkio_app_ctx->shared = 1;
    ijk_map_traversal_handle(h->ijkio_app_ctx->cache_info_map, map_tree_info_fp, ijkio_manager_save_tree_to_file);
    fclose(map_tree_info_fp);
    if (h->ijkio_app_ctx->fd >= 0) {
        fsync(h->ijkio_app_ctx->fd);
    }
    pthread_mutex_unlock(&h->ijkio_app_ctx->mutex);
}
