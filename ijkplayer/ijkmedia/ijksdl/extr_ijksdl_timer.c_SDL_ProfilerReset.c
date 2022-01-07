
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int max_sample; } ;
typedef TYPE_1__ SDL_Profiler ;


 int memset (TYPE_1__*,int ,int) ;

void SDL_ProfilerReset(SDL_Profiler* profiler, int max_sample)
{
    memset(profiler, 0, sizeof(SDL_Profiler));
    if (max_sample < 0)
        profiler->max_sample = 3;
    else
        profiler->max_sample = max_sample;
}
