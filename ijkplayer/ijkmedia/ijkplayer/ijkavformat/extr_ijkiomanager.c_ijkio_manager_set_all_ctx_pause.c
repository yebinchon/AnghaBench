
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int ijk_ctx_map; } ;
struct TYPE_8__ {int state; TYPE_1__* prot; } ;
struct TYPE_7__ {int (* url_pause ) (TYPE_2__*) ;} ;
typedef TYPE_2__ IjkURLContext ;
typedef TYPE_3__ IjkIOManagerContext ;


 int IJKURL_PAUSED ;
 TYPE_2__* ijk_map_index_get (int ,int) ;
 int ijk_map_size (int ) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void ijkio_manager_set_all_ctx_pause(IjkIOManagerContext *h) {
    IjkURLContext *url_ctx;
    int size = ijk_map_size(h->ijk_ctx_map);

    for(int i = 0; i < size; i++) {
        url_ctx = ijk_map_index_get(h->ijk_ctx_map, i);
        if (url_ctx == ((void*)0) || url_ctx->prot == ((void*)0))
            break;

        if (url_ctx->prot->url_pause)
            url_ctx->prot->url_pause(url_ctx);
        url_ctx->state = IJKURL_PAUSED;
    }
}
