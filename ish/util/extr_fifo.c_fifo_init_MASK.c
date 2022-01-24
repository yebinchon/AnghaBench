#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fifo {size_t capacity; scalar_t__ start; scalar_t__ size; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 

void FUNC1(struct fifo *fifo, size_t capacity) {
    fifo->buf = FUNC0(capacity);
    fifo->capacity = capacity;
    fifo->size = fifo->start = 0;
}