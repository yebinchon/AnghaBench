#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  wakeup_dequeue_cond; int /*<<< orphan*/  wakeup_enqueue_cond; scalar_t__ mutex; } ;
typedef  TYPE_1__ SDL_AMediaCodec_FakeFifo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC4(SDL_AMediaCodec_FakeFifo *fifo)
{
    if (!fifo)
        return;

    if (fifo->mutex)
        FUNC0(fifo);

    FUNC2(&fifo->mutex);
    FUNC1(&fifo->wakeup_enqueue_cond);
    FUNC1(&fifo->wakeup_dequeue_cond);

    FUNC3(fifo, 0, sizeof(SDL_AMediaCodec_FakeFifo));
}