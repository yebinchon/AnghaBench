#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  vidclk; } ;
typedef  TYPE_2__ VideoState ;
struct TYPE_8__ {double avdelay; double avdiff; } ;
struct TYPE_10__ {TYPE_1__ stat; } ;
typedef  TYPE_3__ FFPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 scalar_t__ AV_NOSYNC_THRESHOLD ; 
 double AV_SYNC_FRAMEDUP_THRESHOLD ; 
 int /*<<< orphan*/  AV_SYNC_THRESHOLD_MAX ; 
 int /*<<< orphan*/  AV_SYNC_THRESHOLD_MIN ; 
 scalar_t__ AV_SYNC_VIDEO_MASTER ; 
 double FUNC0 (int /*<<< orphan*/ ,double) ; 
 double FUNC1 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,double,double) ; 
 scalar_t__ FUNC3 (double) ; 
 double FUNC4 (int /*<<< orphan*/ *) ; 
 double FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (double) ; 

__attribute__((used)) static double FUNC8(FFPlayer *ffp, double delay, VideoState *is)
{
    double sync_threshold, diff = 0;

    /* update delay to follow master synchronisation source */
    if (FUNC6(is) != AV_SYNC_VIDEO_MASTER) {
        /* if video is slave, we try to correct big delays by
           duplicating or deleting a frame */
        diff = FUNC4(&is->vidclk) - FUNC5(is);

        /* skip or repeat frame. We take into account the
           delay to compute the threshold. I still don't know
           if it is the best guess */
        sync_threshold = FUNC0(AV_SYNC_THRESHOLD_MIN, FUNC1(AV_SYNC_THRESHOLD_MAX, delay));
        /* -- by bbcallen: replace is->max_frame_duration with AV_NOSYNC_THRESHOLD */
        if (!FUNC7(diff) && FUNC3(diff) < AV_NOSYNC_THRESHOLD) {
            if (diff <= -sync_threshold)
                delay = FUNC0(0, delay + diff);
            else if (diff >= sync_threshold && delay > AV_SYNC_FRAMEDUP_THRESHOLD)
                delay = delay + diff;
            else if (diff >= sync_threshold)
                delay = 2 * delay;
        }
    }

    if (ffp) {
        ffp->stat.avdelay = delay;
        ffp->stat.avdiff  = diff;
    }
#ifdef FFP_SHOW_AUDIO_DELAY
    av_log(NULL, AV_LOG_TRACE, "video: delay=%0.3f A-V=%f\n",
            delay, -diff);
#endif

    return delay;
}