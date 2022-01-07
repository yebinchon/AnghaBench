
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* buffer; void* end; } ;
typedef TYPE_1__ IjkFifoBuffer ;


 TYPE_1__* calloc (int,int) ;
 int free (void*) ;
 int ijk_av_fifo_reset (TYPE_1__*) ;

__attribute__((used)) static IjkFifoBuffer *fifo_alloc_common(void *buffer, size_t size)
{
    IjkFifoBuffer *f;
    if (!buffer)
        return ((void*)0);
    f = calloc(1, sizeof(IjkFifoBuffer));
    if (!f) {
        free(buffer);
        return ((void*)0);
    }
    f->buffer = buffer;
    f->end = f->buffer + size;
    ijk_av_fifo_reset(f);
    return f;
}
