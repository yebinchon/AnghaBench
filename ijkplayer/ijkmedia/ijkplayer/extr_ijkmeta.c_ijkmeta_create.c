
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
typedef TYPE_1__ IjkMediaMeta ;


 int SDL_CreateMutex () ;
 scalar_t__ calloc (int,int) ;
 int ijkmeta_destroy (TYPE_1__*) ;

IjkMediaMeta *ijkmeta_create()
{
    IjkMediaMeta *meta = (IjkMediaMeta *)calloc(1, sizeof(IjkMediaMeta));
    if (!meta)
        return ((void*)0);

    meta->mutex = SDL_CreateMutex();
    if (!meta->mutex)
        goto fail;

    return meta;
fail:
    ijkmeta_destroy(meta);
    return ((void*)0);
}
