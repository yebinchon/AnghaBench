
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int videoq; int video_st; } ;
typedef TYPE_2__ VideoState ;
struct TYPE_6__ {int video_cache; } ;
struct TYPE_8__ {TYPE_1__ stat; TYPE_2__* is; } ;
typedef TYPE_3__ FFPlayer ;


 int ffp_track_statistic_l (TYPE_3__*,int ,int *,int *) ;

void ffp_video_statistic_l(FFPlayer *ffp)
{
    VideoState *is = ffp->is;
    ffp_track_statistic_l(ffp, is->video_st, &is->videoq, &ffp->stat.video_cache);
}
