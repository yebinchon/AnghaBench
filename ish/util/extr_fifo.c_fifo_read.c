
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifo {size_t start; size_t size; size_t capacity; int * buf; } ;


 int FIFO_LAST ;
 int FIFO_PEEK ;
 size_t fifo_size (struct fifo*) ;
 int memcpy (char*,int *,size_t) ;

int fifo_read(struct fifo *fifo, void *buf, size_t size, int flags) {
    if (size > fifo_size(fifo))
        return 1;

    size_t start = fifo->start;
    if (flags & FIFO_LAST)
        start = (start + (fifo->size - size)) % fifo->capacity;

    size_t first_copy_size = fifo->capacity - fifo->start;
    if (first_copy_size > size)
        first_copy_size = size;
    memcpy(buf, &fifo->buf[start], first_copy_size);
    memcpy((char *) buf + first_copy_size, &fifo->buf[0], size - first_copy_size);

    if (!(flags & FIFO_PEEK)) {
        fifo->start = (start + size) % fifo->capacity;
        fifo->size -= size;
    }
    return 0;
}
