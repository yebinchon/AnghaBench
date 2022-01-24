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
struct TYPE_3__ {int /*<<< orphan*/  mutex; scalar_t__ size; scalar_t__ end; scalar_t__ begin; scalar_t__ should_abort; } ;
typedef  TYPE_1__ SDL_AMediaCodec_FakeFifo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(SDL_AMediaCodec_FakeFifo *fifo)
{
    if (fifo->should_abort)
        return;

    FUNC0(fifo->mutex);
    fifo->begin = 0;
    fifo->end   = 0;
    fifo->size  = 0;
    FUNC1(fifo->mutex);
}