
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tcp_read_sampler; } ;
typedef TYPE_1__ FFStatistic ;


 int FFP_TCP_READ_SAMPLE_RANGE ;
 int SDL_SpeedSampler2Reset (int *,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) inline static void ffp_reset_statistic(FFStatistic *dcc)
{
    memset(dcc, 0, sizeof(FFStatistic));
    SDL_SpeedSampler2Reset(&dcc->tcp_read_sampler, FFP_TCP_READ_SAMPLE_RANGE);
}
