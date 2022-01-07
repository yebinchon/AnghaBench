
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_10__ {scalar_t__ cur_ffmpeg_ctx; int ijk_ctx_map; } ;
struct TYPE_9__ {struct TYPE_9__* priv_data; TYPE_1__* prot; } ;
struct TYPE_8__ {int (* url_close ) (TYPE_2__*) ;} ;
typedef TYPE_2__ IjkURLContext ;
typedef TYPE_3__ IjkIOManagerContext ;


 int ijk_av_freep (TYPE_2__**) ;
 TYPE_2__* ijk_map_get (int ,int ) ;
 int ijk_map_remove (int ,int ) ;
 int stub1 (TYPE_2__*) ;

int ijkio_manager_io_close(IjkIOManagerContext *h) {
    int ret = -1;
    if (!h)
        return ret;

    IjkURLContext *inner = ijk_map_get(h->ijk_ctx_map, (int64_t)(intptr_t)h->cur_ffmpeg_ctx);
    if (inner) {
        if (inner->prot && inner->prot->url_close) {
            ret = inner->prot->url_close(inner);
        }
        ijk_map_remove(h->ijk_ctx_map, (int64_t)(intptr_t)h->cur_ffmpeg_ctx);
        ijk_av_freep(&inner->priv_data);
        ijk_av_freep(&inner);
    }

    return ret;
}
