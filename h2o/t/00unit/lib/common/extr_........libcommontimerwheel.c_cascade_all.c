
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num_wheels; int ** wheels; int last_run; } ;
typedef TYPE_1__ h2o_timerwheel_t ;


 int cascade_one (TYPE_1__*,size_t,size_t) ;
 int h2o_linklist_is_empty (int *) ;
 size_t timer_slot (size_t,int ) ;

__attribute__((used)) static int cascade_all(h2o_timerwheel_t *ctx, size_t wheel)
{
    int cascaded = 0;

    for (; wheel < ctx->num_wheels; ++wheel) {
        size_t slot = timer_slot(wheel, ctx->last_run);
        if (!h2o_linklist_is_empty(&ctx->wheels[wheel][slot]))
            cascaded = 1;
        cascade_one(ctx, wheel, slot);
        if (slot != 0)
            break;
    }

    return cascaded;
}
