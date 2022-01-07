
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_8__ {scalar_t__ io_manager_ctx; } ;
struct TYPE_7__ {TYPE_3__* cur_ffmpeg_ctx; } ;
typedef TYPE_2__ IjkIOManagerContext ;
typedef TYPE_3__ Context ;


 int ijkio_manager_io_close (TYPE_2__*) ;

__attribute__((used)) static int ijkio_close(URLContext *h)
{
    Context *c = h->priv_data;

    if (!c || !c->io_manager_ctx)
        return -1;

    ((IjkIOManagerContext *)(c->io_manager_ctx))->cur_ffmpeg_ctx = c;
    return ijkio_manager_io_close((IjkIOManagerContext *)(c->io_manager_ctx));
}
