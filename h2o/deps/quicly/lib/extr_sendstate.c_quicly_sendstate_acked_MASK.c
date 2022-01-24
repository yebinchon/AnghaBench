#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_14__ {TYPE_2__* ranges; } ;
struct TYPE_13__ {scalar_t__ num_ranges; TYPE_1__* ranges; } ;
struct TYPE_11__ {scalar_t__ final_size; TYPE_8__ acked; TYPE_7__ pending; } ;
typedef  TYPE_3__ quicly_sendstate_t ;
struct TYPE_12__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
typedef  TYPE_4__ quicly_sendstate_sent_t ;
struct TYPE_10__ {scalar_t__ end; } ;
struct TYPE_9__ {scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(quicly_sendstate_t *state, quicly_sendstate_sent_t *args, int is_active, size_t *bytes_to_shift)
{
    uint64_t prev_sent_upto = state->acked.ranges[0].end;
    int ret;

    /* adjust acked and pending ranges */
    if ((ret = FUNC1(&state->acked, args->start, args->end)) != 0)
        return ret;
    if (!is_active) {
        if ((ret = FUNC2(&state->pending, args->start, args->end)) != 0)
            return ret;
    }
    FUNC0(state->pending.num_ranges == 0 || state->acked.ranges[0].end <= state->pending.ranges[0].start);

    /* calculate number of bytes that can be retired from the send buffer */
    if (prev_sent_upto != state->acked.ranges[0].end) {
        uint64_t sent_upto = state->acked.ranges[0].end;
        if (sent_upto > state->final_size) {
            /* adjust EOS position */
            FUNC0(sent_upto == state->final_size + 1);
            --sent_upto;
        }
        *bytes_to_shift = sent_upto - prev_sent_upto;
    } else {
        *bytes_to_shift = 0;
    }

    return 0;
}