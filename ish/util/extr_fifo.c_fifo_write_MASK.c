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
struct fifo {size_t start; size_t capacity; size_t size; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int FIFO_OVERWRITE ; 
 size_t FUNC0 (struct fifo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 

int FUNC2(struct fifo *fifo, const void *data, size_t size, int flags) {
    if (size > FUNC0(fifo)) {
        if (!(flags & FIFO_OVERWRITE))
            return 1;
        size_t excess = size - FUNC0(fifo);
        fifo->start = (fifo->start + excess) % fifo->capacity;
        fifo->size -= excess;
    }

    size_t tail = (fifo->start + fifo->size) % fifo->capacity;;
    size_t first_copy_size = fifo->capacity - tail;
    if (first_copy_size > size)
        first_copy_size = size;
    FUNC1(&fifo->buf[tail], data, first_copy_size);
    FUNC1(&fifo->buf[0], (char *) data + first_copy_size, size - first_copy_size);
    fifo->size += size;
    return 0;
}