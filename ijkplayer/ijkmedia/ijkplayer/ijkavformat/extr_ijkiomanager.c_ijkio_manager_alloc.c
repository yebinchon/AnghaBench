
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int fd; void* cache_info_map; int threadpool_ctx; int mutex; } ;
struct TYPE_4__ {TYPE_3__* ijkio_app_ctx; void* ijk_ctx_map; void* opaque; } ;
typedef TYPE_1__ IjkIOManagerContext ;


 scalar_t__ calloc (int,int) ;
 void* ijk_map_create () ;
 int ijk_threadpool_create (int,int,int ) ;
 int ijkio_application_open (TYPE_3__**,void*) ;
 int pthread_mutex_init (int *,int *) ;

__attribute__((used)) static int ijkio_manager_alloc(IjkIOManagerContext **ph, void *opaque)
{
    IjkIOManagerContext *h = ((void*)0);

    h = (IjkIOManagerContext *)calloc(1, sizeof(IjkIOManagerContext));
    if (!h)
        return -1;

    h->opaque = opaque;
    h->ijk_ctx_map = ijk_map_create();

    ijkio_application_open(&h->ijkio_app_ctx, opaque);

    pthread_mutex_init(&h->ijkio_app_ctx->mutex, ((void*)0));
    h->ijkio_app_ctx->threadpool_ctx = ijk_threadpool_create(5, 5, 0);
    h->ijkio_app_ctx->cache_info_map = ijk_map_create();
    h->ijkio_app_ctx->fd = -1;
    *ph = h;
    return 0;
}
