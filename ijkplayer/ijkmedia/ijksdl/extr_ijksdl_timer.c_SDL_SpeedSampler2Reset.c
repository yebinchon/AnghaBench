
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_4__ {int sample_range; scalar_t__ last_profile_tick; } ;
typedef TYPE_1__ SDL_SpeedSampler2 ;


 scalar_t__ SDL_GetTickHR () ;
 int memset (TYPE_1__*,int ,int) ;

void SDL_SpeedSampler2Reset(SDL_SpeedSampler2 *sampler, int sample_range)
{
    memset(sampler, 0, sizeof(SDL_SpeedSampler2));
    sampler->sample_range = sample_range;
    sampler->last_profile_tick = (int64_t)SDL_GetTickHR();
}
