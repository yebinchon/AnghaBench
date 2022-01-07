
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buffer_index; scalar_t__ acodec_serial; } ;
typedef TYPE_1__ SDL_AMediaCodecBufferProxy ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void SDL_AMediaCodecBufferProxy_reset(SDL_AMediaCodecBufferProxy *proxy)
{
    memset(proxy, 0, sizeof(SDL_AMediaCodecBufferProxy));
    proxy->buffer_index = -1;
    proxy->acodec_serial = 0;
}
