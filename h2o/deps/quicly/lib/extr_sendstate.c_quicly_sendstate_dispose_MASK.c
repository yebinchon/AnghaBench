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
struct TYPE_3__ {scalar_t__ size_inflight; scalar_t__ final_size; int /*<<< orphan*/  pending; int /*<<< orphan*/  acked; } ;
typedef  TYPE_1__ quicly_sendstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(quicly_sendstate_t *state)
{
    FUNC0(&state->acked);
    FUNC0(&state->pending);
    state->final_size = 0;
    state->size_inflight = 0;
}