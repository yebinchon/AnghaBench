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
struct TYPE_4__ {scalar_t__ read_pos; scalar_t__ read_back_capacity; int /*<<< orphan*/  fifo; } ;
typedef  TYPE_1__ RingBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,scalar_t__,int,void (*) (void*,void*,int)) ; 
 int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(RingBuffer *ring, void *dest, int buf_size, void (*func)(void*, void*, int))
{
    int ret;

    FUNC0(buf_size <= FUNC3(ring));
    ret = FUNC2(ring->fifo, dest, ring->read_pos, buf_size, func);
    ring->read_pos += buf_size;

    if (ring->read_pos > ring->read_back_capacity) {
        FUNC1(ring->fifo, ring->read_pos - ring->read_back_capacity);
        ring->read_pos = ring->read_back_capacity;
    }

    return ret;
}