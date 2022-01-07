
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ fd; int mutex; int cache_file_path; scalar_t__ threadpool_ctx; int * cache_info_map; } ;
struct TYPE_5__ {int * ijk_ctx_map; TYPE_3__* ijkio_app_ctx; int cache_map_path; scalar_t__ auto_save_map; } ;
typedef TYPE_1__ IjkIOManagerContext ;
typedef int FILE ;


 int IJK_IMMEDIATE_SHUTDOWN ;
 int close (scalar_t__) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int free (TYPE_1__*) ;
 int ijk_map_destroy (int *) ;
 int ijk_map_traversal_handle (int *,int *,int ) ;
 int ijk_threadpool_destroy (scalar_t__,int ) ;
 int ijkio_application_closep (TYPE_3__**) ;
 int ijkio_manager_save_tree_to_file ;
 int pthread_mutex_destroy (int *) ;
 scalar_t__ strlen (int ) ;
 int tree_destroy ;

void ijkio_manager_destroy(IjkIOManagerContext *h)
{
    FILE *map_tree_info_fp = ((void*)0);

    if (h->ijkio_app_ctx) {
        if (h->auto_save_map) {
            map_tree_info_fp = fopen(h->cache_map_path, "w");
            if (map_tree_info_fp) {
                ijk_map_traversal_handle(h->ijkio_app_ctx->cache_info_map, map_tree_info_fp, ijkio_manager_save_tree_to_file);
                fclose(map_tree_info_fp);
            }
        }

        ijk_map_traversal_handle(h->ijkio_app_ctx->cache_info_map, ((void*)0), tree_destroy);
        ijk_map_destroy(h->ijkio_app_ctx->cache_info_map);
        h->ijkio_app_ctx->cache_info_map = ((void*)0);

        if (h->ijkio_app_ctx->threadpool_ctx) {
            ijk_threadpool_destroy(h->ijkio_app_ctx->threadpool_ctx, IJK_IMMEDIATE_SHUTDOWN);
        }

        if (0 != strlen(h->ijkio_app_ctx->cache_file_path)) {
            if (h->ijkio_app_ctx->fd >= 0) {
                close(h->ijkio_app_ctx->fd);
            }
        }
        pthread_mutex_destroy(&h->ijkio_app_ctx->mutex);

        ijkio_application_closep(&h->ijkio_app_ctx);
    }

    ijk_map_destroy(h->ijk_ctx_map);
    h->ijk_ctx_map = ((void*)0);

    free(h);
}
