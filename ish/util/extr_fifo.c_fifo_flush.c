
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifo {scalar_t__ size; } ;



void fifo_flush(struct fifo *fifo) {
    fifo->size = 0;
}
