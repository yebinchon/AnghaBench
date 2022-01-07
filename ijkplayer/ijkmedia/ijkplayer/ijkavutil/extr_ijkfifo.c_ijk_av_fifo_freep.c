
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IjkFifoBuffer ;


 int ijk_av_fifo_free (int *) ;

void ijk_av_fifo_freep(IjkFifoBuffer **f)
{
    if (f) {
        ijk_av_fifo_free(*f);
        *f = ((void*)0);
    }
}
