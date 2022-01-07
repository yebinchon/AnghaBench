
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* IN_Shutdown ) () ;} ;


 int SDL_INIT_VIDEO ;
 int SDL_QuitSubSystem (int ) ;
 TYPE_1__ ri ;
 int stub1 () ;

void GLimp_Shutdown( void )
{
 ri.IN_Shutdown();

 SDL_QuitSubSystem( SDL_INIT_VIDEO );
}
