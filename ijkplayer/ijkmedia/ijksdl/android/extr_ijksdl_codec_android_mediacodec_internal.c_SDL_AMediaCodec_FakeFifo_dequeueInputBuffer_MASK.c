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
typedef  int ssize_t ;
typedef  int int64_t ;
struct TYPE_3__ {scalar_t__ size; int end; scalar_t__ should_abort; int /*<<< orphan*/  mutex; int /*<<< orphan*/  wakeup_enqueue_cond; } ;
typedef  TYPE_1__ SDL_AMediaCodec_FakeFifo ;

/* Variables and functions */
 scalar_t__ FAKE_BUFFER_QUEUE_SIZE ; 
 int SDL_AMEDIA_ERROR_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

ssize_t FUNC3(SDL_AMediaCodec_FakeFifo* fifo, int64_t timeoutUs)
{
    int ret_index = -1;
    if (fifo->should_abort)
        return SDL_AMEDIA_ERROR_UNKNOWN;

    FUNC1(fifo->mutex);
    if (!fifo->should_abort) {
        if (fifo->size >= FAKE_BUFFER_QUEUE_SIZE) {
            FUNC0(fifo->wakeup_enqueue_cond, fifo->mutex, timeoutUs / 1000);
        }

        if (fifo->size < FAKE_BUFFER_QUEUE_SIZE) {
            ret_index = fifo->end;
        }
    }
    FUNC2(fifo->mutex);

    if (fifo->should_abort)
        return -1;

    return ret_index;
}