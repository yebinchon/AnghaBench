
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef float Uint64 ;
struct TYPE_3__ {float* samples; size_t next_index; int capacity; int count; int first_index; float last_log_time; } ;
typedef TYPE_1__ SDL_SpeedSampler ;


 int ALOGW (char*,char const*,float) ;
 float SDL_GetTickHR () ;

float SDL_SpeedSamplerAdd(SDL_SpeedSampler *sampler, int enable_log, const char *log_tag)
{
    Uint64 current = SDL_GetTickHR();
    sampler->samples[sampler->next_index] = current;
    sampler->next_index++;
    sampler->next_index %= sampler->capacity;
    if (sampler->count + 1 >= sampler->capacity) {
        sampler->first_index++;
        sampler->first_index %= sampler->capacity;
    } else {
        sampler->count++;
    }

    if (sampler->count < 2)
        return 0;

    float samples_per_second = 1000.0f * (sampler->count - 1) / (current - sampler->samples[sampler->first_index]);

    if (enable_log && (sampler->last_log_time + 1000 < current || sampler->last_log_time > current)) {
        sampler->last_log_time = current;
        ALOGW("%s: %.2f\n", log_tag ? log_tag : "N/A", samples_per_second);
    }

    return samples_per_second;
}
