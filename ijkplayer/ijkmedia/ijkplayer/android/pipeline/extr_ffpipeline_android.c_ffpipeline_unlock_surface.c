
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* opaque; } ;
struct TYPE_4__ {int surface_mutex; } ;
typedef TYPE_1__ IJKFF_Pipeline_Opaque ;
typedef TYPE_2__ IJKFF_Pipeline ;


 int SDL_UnlockMutex (int ) ;

int ffpipeline_unlock_surface(IJKFF_Pipeline* pipeline)
{
    IJKFF_Pipeline_Opaque *opaque = pipeline->opaque;
    return SDL_UnlockMutex(opaque->surface_mutex);
}
