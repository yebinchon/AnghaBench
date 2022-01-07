
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void uint8_t ;
struct TYPE_3__ {void* end; int buffer; void* rptr; } ;
typedef TYPE_1__ IjkFifoBuffer ;


 int FFMIN (int,int) ;
 int memcpy (void*,void*,int) ;

int ijk_av_fifo_generic_peek(IjkFifoBuffer *f, void *dest, int buf_size,
                         void (*func)(void *, void *, int))
{

    uint8_t *rptr = f->rptr;

    do {
        int len = FFMIN(f->end - rptr, buf_size);
        if (func)
            func(dest, rptr, len);
        else {
            memcpy(dest, rptr, len);
            dest = (uint8_t *)dest + len;
        }

        rptr += len;
        if (rptr >= f->end)
            rptr -= f->end - f->buffer;
        buf_size -= len;
    } while (buf_size > 0);

    return 0;
}
