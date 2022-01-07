
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifo {size_t start; size_t capacity; size_t size; int * buf; } ;


 int FIFO_OVERWRITE ;
 size_t fifo_remaining (struct fifo*) ;
 int memcpy (int *,char*,size_t) ;

int fifo_write(struct fifo *fifo, const void *data, size_t size, int flags) {
    if (size > fifo_remaining(fifo)) {
        if (!(flags & FIFO_OVERWRITE))
            return 1;
        size_t excess = size - fifo_remaining(fifo);
        fifo->start = (fifo->start + excess) % fifo->capacity;
        fifo->size -= excess;
    }

    size_t tail = (fifo->start + fifo->size) % fifo->capacity;;
    size_t first_copy_size = fifo->capacity - tail;
    if (first_copy_size > size)
        first_copy_size = size;
    memcpy(&fifo->buf[tail], data, first_copy_size);
    memcpy(&fifo->buf[0], (char *) data + first_copy_size, size - first_copy_size);
    fifo->size += size;
    return 0;
}
