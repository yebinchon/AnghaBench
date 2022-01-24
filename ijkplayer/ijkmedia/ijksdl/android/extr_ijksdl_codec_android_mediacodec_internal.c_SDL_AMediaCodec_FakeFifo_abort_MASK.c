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
struct TYPE_3__ {int should_abort; int /*<<< orphan*/  mutex; int /*<<< orphan*/  wakeup_dequeue_cond; int /*<<< orphan*/  wakeup_enqueue_cond; } ;
typedef  TYPE_1__ SDL_AMediaCodec_FakeFifo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(SDL_AMediaCodec_FakeFifo *fifo)
{
    FUNC1(fifo->mutex);
    fifo->should_abort = 1;
    FUNC0(fifo->wakeup_enqueue_cond);
    FUNC0(fifo->wakeup_dequeue_cond);
    FUNC2(fifo->mutex);
}