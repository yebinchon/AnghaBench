
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ sample_range; scalar_t__ last_profile_tick; scalar_t__ last_profile_quantity; scalar_t__ last_profile_duration; } ;
typedef TYPE_1__ SDL_SpeedSampler2 ;


 int SDL_GetTickHR () ;
 int llabs (scalar_t__) ;

int64_t SDL_SpeedSampler2GetSpeed(SDL_SpeedSampler2 *sampler)
{
    int64_t sample_range = sampler->sample_range;
    int64_t last_tick = sampler->last_profile_tick;
    int64_t last_quantity = sampler->last_profile_quantity;
    int64_t last_duration = sampler->last_profile_duration;
    int64_t now = (int64_t)SDL_GetTickHR();
    int64_t elapsed = (int64_t)llabs(now - last_tick);
    if (elapsed < 0 || elapsed >= sample_range)
        return 0;

    int64_t new_quantity = last_quantity;
    int64_t new_duration = last_duration + elapsed;
    if (new_duration > sample_range) {
        new_quantity = new_quantity * sample_range / new_duration;
        new_duration = sample_range;
    }

    if (new_duration <= 0)
        return 0;

    return new_quantity * 1000 / new_duration;
}
