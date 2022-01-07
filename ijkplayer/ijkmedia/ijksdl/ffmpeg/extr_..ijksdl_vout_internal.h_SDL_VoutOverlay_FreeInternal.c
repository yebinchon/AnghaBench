
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* opaque; } ;
typedef TYPE_1__ SDL_VoutOverlay ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) inline static void SDL_VoutOverlay_FreeInternal(SDL_VoutOverlay *overlay)
{
    if (!overlay)
        return;

    if (overlay->opaque)
        free(overlay->opaque);

    memset(overlay, 0, sizeof(SDL_VoutOverlay));
    free(overlay);
}
