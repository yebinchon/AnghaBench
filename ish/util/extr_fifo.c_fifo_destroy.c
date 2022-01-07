
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifo {int buf; } ;


 int free (int ) ;

void fifo_destroy(struct fifo *fifo) {
    free(fifo->buf);
}
