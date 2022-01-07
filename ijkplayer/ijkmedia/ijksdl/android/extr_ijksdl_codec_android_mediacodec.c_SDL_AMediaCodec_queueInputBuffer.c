
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int sdl_amedia_status_t ;
typedef int off_t ;
struct TYPE_7__ {int (* func_queueInputBuffer ) (TYPE_2__*,size_t,int ,size_t,int ,int) ;TYPE_1__* common; } ;
struct TYPE_6__ {int fake_fifo; } ;
typedef TYPE_2__ SDL_AMediaCodec ;


 int AMEDIACODEC__BUFFER_FLAG_FAKE_FRAME ;
 int SDL_AMediaCodec_FakeFifo_queueInputBuffer (int *,size_t,int ,size_t,int ,int) ;
 int assert (int (*) (TYPE_2__*,size_t,int ,size_t,int ,int)) ;
 int stub1 (TYPE_2__*,size_t,int ,size_t,int ,int) ;

sdl_amedia_status_t SDL_AMediaCodec_queueInputBuffer(SDL_AMediaCodec* acodec, size_t idx, off_t offset, size_t size, uint64_t time, uint32_t flags)
{
    assert(acodec->func_queueInputBuffer);
    if (flags & AMEDIACODEC__BUFFER_FLAG_FAKE_FRAME) {
        return SDL_AMediaCodec_FakeFifo_queueInputBuffer(&acodec->common->fake_fifo, idx, offset, size, time, flags);
    }

    return acodec->func_queueInputBuffer(acodec, idx, offset, size, time, flags);
}
