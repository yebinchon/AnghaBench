
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int end; int buffer; } ;
typedef TYPE_1__ IjkFifoBuffer ;


 int ijk_av_fifo_size (TYPE_1__ const*) ;

int ijk_av_fifo_space(const IjkFifoBuffer *f)
{
    return f->end - f->buffer - ijk_av_fifo_size(f);
}
