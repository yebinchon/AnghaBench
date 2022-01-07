
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int vidclk; } ;
typedef TYPE_2__ VideoState ;
struct TYPE_8__ {double avdelay; double avdiff; } ;
struct TYPE_10__ {TYPE_1__ stat; } ;
typedef TYPE_3__ FFPlayer ;


 int AV_LOG_TRACE ;
 scalar_t__ AV_NOSYNC_THRESHOLD ;
 double AV_SYNC_FRAMEDUP_THRESHOLD ;
 int AV_SYNC_THRESHOLD_MAX ;
 int AV_SYNC_THRESHOLD_MIN ;
 scalar_t__ AV_SYNC_VIDEO_MASTER ;
 double FFMAX (int ,double) ;
 double FFMIN (int ,double) ;
 int av_log (int *,int ,char*,double,double) ;
 scalar_t__ fabs (double) ;
 double get_clock (int *) ;
 double get_master_clock (TYPE_2__*) ;
 scalar_t__ get_master_sync_type (TYPE_2__*) ;
 int isnan (double) ;

__attribute__((used)) static double compute_target_delay(FFPlayer *ffp, double delay, VideoState *is)
{
    double sync_threshold, diff = 0;


    if (get_master_sync_type(is) != AV_SYNC_VIDEO_MASTER) {


        diff = get_clock(&is->vidclk) - get_master_clock(is);




        sync_threshold = FFMAX(AV_SYNC_THRESHOLD_MIN, FFMIN(AV_SYNC_THRESHOLD_MAX, delay));

        if (!isnan(diff) && fabs(diff) < AV_NOSYNC_THRESHOLD) {
            if (diff <= -sync_threshold)
                delay = FFMAX(0, delay + diff);
            else if (diff >= sync_threshold && delay > AV_SYNC_FRAMEDUP_THRESHOLD)
                delay = delay + diff;
            else if (diff >= sync_threshold)
                delay = 2 * delay;
        }
    }

    if (ffp) {
        ffp->stat.avdelay = delay;
        ffp->stat.avdiff = diff;
    }





    return delay;
}
