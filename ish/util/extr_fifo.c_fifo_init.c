
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifo {size_t capacity; scalar_t__ start; scalar_t__ size; int buf; } ;


 int malloc (size_t) ;

void fifo_init(struct fifo *fifo, size_t capacity) {
    fifo->buf = malloc(capacity);
    fifo->capacity = capacity;
    fifo->size = fifo->start = 0;
}
