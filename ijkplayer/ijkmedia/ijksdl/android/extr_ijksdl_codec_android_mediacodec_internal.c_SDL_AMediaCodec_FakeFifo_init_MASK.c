#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sdl_amedia_status_t ;
struct TYPE_4__ {void* wakeup_dequeue_cond; void* wakeup_enqueue_cond; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ SDL_AMediaCodec_FakeFifo ;

/* Variables and functions */
 int /*<<< orphan*/  SDL_AMEDIA_OK ; 
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

sdl_amedia_status_t FUNC3(SDL_AMediaCodec_FakeFifo *fifo)
{
    FUNC2(fifo, 0, sizeof(SDL_AMediaCodec_FakeFifo));

    fifo->mutex = FUNC1();
    fifo->wakeup_enqueue_cond = FUNC0();
    fifo->wakeup_dequeue_cond = FUNC0();

    return SDL_AMEDIA_OK;
}