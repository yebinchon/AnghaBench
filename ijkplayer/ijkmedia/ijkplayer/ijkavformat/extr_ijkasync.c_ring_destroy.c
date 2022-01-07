
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fifo; } ;
typedef TYPE_1__ RingBuffer ;


 int av_fifo_freep (int *) ;

__attribute__((used)) static void ring_destroy(RingBuffer *ring)
{
    av_fifo_freep(&ring->fifo);
}
