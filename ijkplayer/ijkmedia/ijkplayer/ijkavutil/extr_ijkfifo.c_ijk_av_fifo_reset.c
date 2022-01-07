
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rndx; scalar_t__ wndx; int buffer; int rptr; int wptr; } ;
typedef TYPE_1__ IjkFifoBuffer ;



void ijk_av_fifo_reset(IjkFifoBuffer *f)
{
    f->wptr = f->rptr = f->buffer;
    f->wndx = f->rndx = 0;
}
