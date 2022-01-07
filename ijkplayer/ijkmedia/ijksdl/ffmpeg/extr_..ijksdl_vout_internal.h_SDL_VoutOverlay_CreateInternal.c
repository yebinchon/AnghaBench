
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ opaque; } ;
typedef TYPE_1__ SDL_VoutOverlay ;


 scalar_t__ calloc (int,size_t) ;
 int free (TYPE_1__*) ;

__attribute__((used)) inline static SDL_VoutOverlay *SDL_VoutOverlay_CreateInternal(size_t opaque_size)
{
    SDL_VoutOverlay *overlay = (SDL_VoutOverlay*) calloc(1, sizeof(SDL_VoutOverlay));
    if (!overlay)
        return ((void*)0);

    overlay->opaque = calloc(1, opaque_size);
    if (!overlay->opaque) {
        free(overlay);
        return ((void*)0);
    }
    return overlay;
}
