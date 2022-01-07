
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ read_pos; scalar_t__ read_back_capacity; int fifo; } ;
typedef TYPE_1__ RingBuffer ;


 int av_assert2 (int) ;
 int av_fifo_drain (int ,scalar_t__) ;
 int av_fifo_generic_peek_at (int ,void*,scalar_t__,int,void (*) (void*,void*,int)) ;
 int ring_size (TYPE_1__*) ;

__attribute__((used)) static int ring_generic_read(RingBuffer *ring, void *dest, int buf_size, void (*func)(void*, void*, int))
{
    int ret;

    av_assert2(buf_size <= ring_size(ring));
    ret = av_fifo_generic_peek_at(ring->fifo, dest, ring->read_pos, buf_size, func);
    ring->read_pos += buf_size;

    if (ring->read_pos > ring->read_back_capacity) {
        av_fifo_drain(ring->fifo, ring->read_pos - ring->read_back_capacity);
        ring->read_pos = ring->read_back_capacity;
    }

    return ret;
}
