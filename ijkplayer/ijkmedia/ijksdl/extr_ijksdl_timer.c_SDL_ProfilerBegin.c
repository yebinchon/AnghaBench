
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int begin_time; } ;
typedef TYPE_1__ SDL_Profiler ;


 int SDL_GetTickHR () ;

void SDL_ProfilerBegin(SDL_Profiler* profiler)
{
    profiler->begin_time = SDL_GetTickHR();
}
