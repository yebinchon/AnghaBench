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
typedef  scalar_t__ int64_t ;
struct TYPE_4__ {int read_back_capacity; int /*<<< orphan*/  fifo; } ;
typedef  TYPE_1__ RingBuffer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(RingBuffer *ring, int64_t capacity, int64_t read_back_capacity)
{
    FUNC2(ring, 0, sizeof(RingBuffer));
    ring->fifo = FUNC1((unsigned int)(capacity + read_back_capacity));
    if (!ring->fifo)
        return FUNC0(ENOMEM);

    ring->read_back_capacity = (int)read_back_capacity;
    return 0;
}