
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int abort_request; TYPE_1__* ijkio_interrupt_callback; } ;
struct TYPE_6__ {TYPE_3__* priv_data; } ;
struct TYPE_5__ {int opaque; scalar_t__ (* callback ) (int ) ;} ;
typedef TYPE_2__ IjkURLContext ;
typedef TYPE_3__ IjkIOCacheContext ;


 scalar_t__ stub1 (int ) ;

__attribute__((used)) static int ijkio_cache_check_interrupt(IjkURLContext *h)
{
    IjkIOCacheContext *c = h->priv_data;
    if (!c)
        return 1;

    if (c->abort_request)
        return 1;

    if (c->ijkio_interrupt_callback && c->ijkio_interrupt_callback->callback &&
                    c->ijkio_interrupt_callback->callback(c->ijkio_interrupt_callback->opaque)) {
        c->abort_request = 1;
    }

    if (c->abort_request)
        return 1;

    return c->abort_request;
}
