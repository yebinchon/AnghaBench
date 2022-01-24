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
struct fifo {size_t start; size_t size; size_t capacity; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int FIFO_LAST ; 
 int FIFO_PEEK ; 
 size_t FUNC0 (struct fifo*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,size_t) ; 

int FUNC2(struct fifo *fifo, void *buf, size_t size, int flags) {
    if (size > FUNC0(fifo))
        return 1;

    size_t start = fifo->start;
    if (flags & FIFO_LAST)
        start = (start + (fifo->size - size)) % fifo->capacity;

    size_t first_copy_size = fifo->capacity - fifo->start;
    if (first_copy_size > size)
        first_copy_size = size;
    FUNC1(buf, &fifo->buf[start], first_copy_size);
    FUNC1((char *) buf + first_copy_size, &fifo->buf[0], size - first_copy_size);

    if (!(flags & FIFO_PEEK)) {
        fifo->start = (start + size) % fifo->capacity;
        fifo->size -= size;
    }
    return 0;
}