
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int read_pos; int fifo; } ;
typedef TYPE_1__ RingBuffer ;


 int av_fifo_size (int ) ;

__attribute__((used)) static int ring_size(RingBuffer *ring)
{
    return av_fifo_size(ring->fifo) - ring->read_pos;
}
