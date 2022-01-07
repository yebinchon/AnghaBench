
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num_wheels; } ;
typedef TYPE_1__ h2o_timerwheel_t ;


 size_t H2O_TIMERWHEEL_SLOTS_PER_WHEEL ;
 int validate_slot (TYPE_1__*,size_t,size_t) ;

int h2o_timerwheel_validate(h2o_timerwheel_t *ctx)
{
    size_t wheel, slot;
    int success = 1;

    for (wheel = 0; wheel < ctx->num_wheels; ++wheel)
        for (slot = 0; slot < H2O_TIMERWHEEL_SLOTS_PER_WHEEL; ++slot)
            if (!validate_slot(ctx, wheel, slot))
                success = 0;

    return success;
}
