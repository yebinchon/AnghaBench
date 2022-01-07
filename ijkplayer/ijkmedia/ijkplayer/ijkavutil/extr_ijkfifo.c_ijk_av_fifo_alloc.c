
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IjkFifoBuffer ;


 int * fifo_alloc_common (void*,unsigned int) ;
 void* malloc (unsigned int) ;

IjkFifoBuffer *ijk_av_fifo_alloc(unsigned int size)
{
    void *buffer = malloc(size);
    return fifo_alloc_common(buffer, size);
}
