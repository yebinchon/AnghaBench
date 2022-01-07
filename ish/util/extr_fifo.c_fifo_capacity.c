
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifo {size_t capacity; } ;



size_t fifo_capacity(struct fifo *fifo) {
    return fifo->capacity;
}
