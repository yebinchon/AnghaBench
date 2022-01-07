
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fifo; } ;
typedef TYPE_1__ RingBuffer ;


 int av_fifo_space (int ) ;

__attribute__((used)) static int ring_space(RingBuffer *ring)
{
    return av_fifo_space(ring->fifo);
}
