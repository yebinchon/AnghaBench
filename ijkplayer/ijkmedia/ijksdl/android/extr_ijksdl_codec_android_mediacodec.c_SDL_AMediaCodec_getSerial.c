
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int object_serial; } ;
typedef TYPE_1__ SDL_AMediaCodec ;



int SDL_AMediaCodec_getSerial(SDL_AMediaCodec* acodec)
{
    if (!acodec)
        return 0;
    return acodec->object_serial;
}
