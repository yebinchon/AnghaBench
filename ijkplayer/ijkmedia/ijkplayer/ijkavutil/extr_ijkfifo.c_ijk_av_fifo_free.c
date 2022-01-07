
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buffer; } ;
typedef TYPE_1__ IjkFifoBuffer ;


 int free (TYPE_1__*) ;
 int ijk_av_freep (int *) ;

void ijk_av_fifo_free(IjkFifoBuffer *f)
{
    if (f) {
        ijk_av_freep(&f->buffer);
        free(f);
    }
}
