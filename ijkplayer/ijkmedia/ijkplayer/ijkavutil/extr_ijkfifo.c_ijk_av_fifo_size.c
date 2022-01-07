
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ rndx; scalar_t__ wndx; } ;
typedef TYPE_1__ IjkFifoBuffer ;



int ijk_av_fifo_size(const IjkFifoBuffer *f)
{
    return (uint32_t)(f->wndx - f->rndx);
}
