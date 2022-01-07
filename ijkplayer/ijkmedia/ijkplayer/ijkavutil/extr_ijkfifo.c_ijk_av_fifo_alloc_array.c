
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IjkFifoBuffer ;


 void* calloc (size_t,size_t) ;
 int * fifo_alloc_common (void*,size_t) ;

IjkFifoBuffer *ijk_av_fifo_alloc_array(size_t nmemb, size_t size)
{
    void *buffer = calloc(nmemb, size);
    return fifo_alloc_common(buffer, nmemb * size);
}
