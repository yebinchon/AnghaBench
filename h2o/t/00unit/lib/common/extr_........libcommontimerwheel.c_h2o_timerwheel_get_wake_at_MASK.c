#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
struct TYPE_3__ {size_t last_run; size_t num_wheels; int /*<<< orphan*/ ** wheels; } ;
typedef  TYPE_1__ h2o_timerwheel_t ;

/* Variables and functions */
 size_t H2O_TIMERWHEEL_BITS_PER_WHEEL ; 
 size_t H2O_TIMERWHEEL_SLOTS_PER_WHEEL ; 
 size_t UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (size_t,size_t) ; 
 int /*<<< orphan*/  w ; 

uint64_t FUNC4(h2o_timerwheel_t *ctx)
{
#if H2O_TIMER_VALIDATE
    assert(h2o_timer_validate_wheel(w));
#endif

    size_t wheel, slot;
    uint64_t at = ctx->last_run;

    for (wheel = 0; wheel < ctx->num_wheels; ++wheel) {
        uint64_t at_incr = (uint64_t)1 << (wheel * H2O_TIMERWHEEL_BITS_PER_WHEEL);
        size_t slot_base = FUNC3(wheel, at);
        /* check current wheel from slot_base */
        for (slot = slot_base; slot < H2O_TIMERWHEEL_SLOTS_PER_WHEEL; ++slot) {
            if (!FUNC1(&ctx->wheels[wheel][slot]))
                goto Found;
            at += at_incr;
        }
        while (1) {
            /* handle carry */
            if (wheel + 1 < ctx->num_wheels) {
                size_t wi;
                for (wi = wheel + 1; wi < ctx->num_wheels; ++wi) {
                    size_t si = FUNC3(wi, at);
                    if (!FUNC1(&ctx->wheels[wi][si]))
                        goto Found;
                    if (si != 0)
                        break;
                }
            }
            /* check current wheel from 0 to slot_base */
            if (slot_base == 0)
                break;
            for (slot = 0; slot < slot_base; ++slot) {
                if (!FUNC1(&ctx->wheels[wheel][slot]))
                    goto Found;
                at += at_incr;
            }
            at += at_incr * (H2O_TIMERWHEEL_SLOTS_PER_WHEEL - slot_base);
            slot_base = 0;
        }
    }

    /* not found */
    return UINT64_MAX;
Found:
    return at;
}